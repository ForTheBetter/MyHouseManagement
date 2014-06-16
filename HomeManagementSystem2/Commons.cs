using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
namespace HomeManagementSystem2
{

    public static class Commons
    {
        public static DataClasses1DataContext dc = new DataClasses1DataContext();
        public static bool doLogin(string UserEmail, string UserPassword)
        {

            var pe1 = dc.person.FirstOrDefault(a => a.email == UserEmail);
            if (pe1 == null)
            {
                return false;
            }
            else
            {

                var pe2 = dc.member.FirstOrDefault(a => a.person_id == pe1.person_id);

                if (pe2 == null)
                    return false;
                else
                {
                    if ((pe1.email == UserEmail) && (pe1.password == UserPassword))
                    {

                        return true;
                    }
                    else
                        return false;
                }
            }
        }

        public static person findPersonByEmail(string UserEmail)    //通过Email查找person实体，为了存储在Session中
        {
            return dc.person.FirstOrDefault(a => a.email == UserEmail);
        }

        public static IQueryable findAllAgents()
        {

            var query = from p in dc.person
                        from a in dc.agent
                        where p.person_id == a.person_id
                        select new { person_id = p.person_id, name = p.names, profession = a.profession, register_date = a.register_date, trade_number = a.trade_number };
            return query;
        }

        public static string findAgentNameByAgentId(int id)    //根据经纪人的id查找经纪人的姓名
        {
            person p = dc.person.FirstOrDefault(a => a.person_id == id);
            return p.names;
        }

        public static address findCommunityByCommunityName(string name)
        {
            address a = dc.address.FirstOrDefault(d => d.community == name);
            return a;
        }

        public static bool insertOneIntoSaleHouseAndDelegate(salehouse s, @delegate d)
        {

            dc.salehouse.InsertOnSubmit(s);
            dc.@delegate.InsertOnSubmit(d);
            dc.SubmitChanges();
            return true;
        }

        public static void addOnePhotoToPhotos(string path, int person_id)
        {
            //dc.@delegate.FirstOrDefault(a => a.member1.person_id == person_id && a.date);
            var latest_time = dc.@delegate.Select(e => e.date).Max();
            @delegate d = dc.@delegate.FirstOrDefault(t => t.date == latest_time && t.member1.person_id == person_id);

            var newPhoto = new photo
            {
                picture = path,
                house1 = d.house1

            };

            dc.photo.InsertOnSubmit(newPhoto);
            dc.SubmitChanges();
            //找出房屋id
        }
        public static int findHouseIdByHouse(house h)
        {
            return dc.house.FirstOrDefault(a => (a.member == h.member) && (a.address == h.address)).house_id;
        }

        public static bool judgeAgentByAgentAccountAndPassword(string account, string password)
        {

            person p = dc.person.FirstOrDefault(a => (a.email == account) && (a.password == password));
            if (p == null)
                return false;

            agent ag = dc.agent.FirstOrDefault(a => (a.person_id == p.person_id));

            if (ag == null)
                return false;
            else return true;
        }

        public static List<string> getLastHouseAllPhotosByPersonId(int person_id)
        {
            var latest_time = dc.@delegate.Select(e => e.date).Max();
            @delegate d = dc.@delegate.FirstOrDefault(t => t.date == latest_time && t.member1.person_id == person_id);
            var allPhotos = from p in dc.photo where p.house == d.house select p.picture;
            List<string> photolist = allPhotos.ToList();
            return photolist;


        }

        public static @delegate getLastDelegateByPersonId(int person_id)
        {
            var latest_time = dc.@delegate.Select(e => e.date).Max();
            @delegate d = dc.@delegate.FirstOrDefault(t => t.date == latest_time && t.member1.person_id == person_id);
            return d;
        }

        public static void setDelegateMessages(string message, @delegate d)
        {
            d.messages = message;
            dc.SubmitChanges();

        }

        public static string[] getTopNCommunitiesByPrefix(string prefix, int n)
        {

            int count = dc.address.Where(str => str.community.Contains(prefix)).ToList().Count;
            string[] array = new string[count];
            List<address> addarray = dc.address.Where(str => str.community.Contains(prefix)).ToList();

            for (int i = 0; i < count; i++)
            {
                array[i] = addarray[i].community;
            }
            return array;

        }

        public static bool judgeCommunityNameAvailable(string name)
        {
            var p = dc.address.FirstOrDefault(a => a.community == name);
            if (p == null)
                return false;
            else
                return true;
        }

        public static string[] getCommunityInformationByName(string name)
        {
            var p = dc.address.FirstOrDefault(a => a.community == name);
            string[] t = new string[3];
            t[0] = p.city;
            t[1] = p.area;
            t[2] = p.street;
            return t;
        }

        public static bool judgeIfXiaoqumingExsit(string name)
        {

            var p = dc.address.FirstOrDefault(a => a.community == name);
            if (p == null)
                return false;
            else
                return true;

        }

        public static agent findAgentByPersonId(int person_id)
        {
            var p = dc.agent.FirstOrDefault(a => a.person_id == person_id);
            return p;
        }

        public static IQueryable findAllDelegatesSmallDetailByAgentId(int person_id)
        {
            var p = from d in dc.@delegate
                    from h in dc.house
                    from a in dc.address
                    from s in dc.salehouse
                    where (d.house == h.house_id) && (h.address == a.address_id) && (s.house_id == h.house_id) && (d.agent == person_id)
                    &&(d.state == "pending")
                    select new
                    {
                        HouseId = h.house_id,
                        Community_name = a.community,
                        Mianji = h.area,
                        Price = s.price
                    };
            return p;
        }

        public static IQueryable findAllRentDelegatesSmallDetailByAgentId(int person_id)
        {
            var p = from d in dc.@delegate
                    from h in dc.house
                    from a in dc.address
                    from r in dc.renthouse
                    where (d.house == h.house_id) && (h.address == a.address_id) && (r.house_id == h.house_id) && (d.agent == person_id)
                         && (d.state == "pending")
                    select new
                    {
                        HouseId = h.house_id,
                        Community_name = a.community,
                        Mianji = h.area,
                        Price = r.payment
                    };
            return p;
        }

        public static house findHouseByHouseId(int house_id)
        {
            var p = from h in dc.house
                    where h.house_id == house_id
                    select h;
            return p.FirstOrDefault();
        }

        public static address findAddressByHouse(house h)
        {
            var p = dc.address.FirstOrDefault(a => a.address_id == h.address);
            return p;
        }

        public static person findPersonByPersonId(int person_id)
        {
            return dc.person.FirstOrDefault(p => p.person_id == person_id);
        }

        public static @delegate findDelegateByThreeParameters(int m_id, int a_id, int h_id)
        {
            var p = dc.@delegate.FirstOrDefault(a => (a.member == m_id) && (a.agent == a_id) && (a.house == h_id));
            return p;
        }
        public static string[] getAllSaleHousePicturesByHouseId(int house_id)
        {
            var a = dc.house.FirstOrDefault(p => p.house_id == house_id);
            var b = dc.photo.Where(q => q.house1 == a);
            List<photo> l = b.ToList();
            string[] t = new string[l.Count];
            for (int i = 0; i < l.Count; i++)
            {
                t[i] = l[i].picture;
            }
            return t;
        }  
   
        public static Dictionary<string, string> findAllSaleHouseInformationByAgentIdAndHouseId(int agent_id, int house_id)
        {

            house h = Commons.findHouseByHouseId(house_id);
            address a = Commons.findAddressByHouse(h);
            person p = Commons.findPersonByPersonId(h.member1.person_id);
            salehouse s = dc.salehouse.FirstOrDefault(q => q.house_id == h.house_id);
            @delegate de = Commons.findDelegateByThreeParameters(p.person_id, agent_id, h.house_id);
            Dictionary<string, string> d = new Dictionary<string, string>();
            d.Add("levels", h.levels);
            d.Add("area", h.area.ToString());
            d.Add("orientation", h.orientation);
            d.Add("types", h.types);
            d.Add("decoration", h.decoration);
            d.Add("s*types", s.types);
            d.Add("s*price", s.price.ToString());
            d.Add("s*developer", s.developer);
            d.Add("s*property_costs", s.property_costs.ToString());
            d.Add("s*build_date", s.build_date.ToString());
            d.Add("s*description", s.description);
            d.Add("room", h.room.ToString());
            d.Add("hall", h.hall.ToString());
            d.Add("toilet", h.toilet.ToString());
            d.Add("title", h.title);
            d.Add("a*city", a.city);
            d.Add("a*street", a.street);
            d.Add("a*area", a.area);
            d.Add("a*community", a.community);
            d.Add("p*names", p.names);
            d.Add("p*phone", p.phone);
            d.Add("p*email", p.email);
            d.Add("de*date", de.date.ToString());
            d.Add("de*messages", de.messages);
            d.Add("de*state", de.state);
            return d;
        }

        public static Dictionary<string, string> findAllRentHouseInformationByAgentIdAndHouseId(int agent_id, int house_id)
        {

            house h = Commons.findHouseByHouseId(house_id);
            address a = Commons.findAddressByHouse(h);
            person p = Commons.findPersonByPersonId(h.member1.person_id);
            renthouse r = dc.renthouse.FirstOrDefault(q => q.house_id == h.house_id);
            @delegate de = Commons.findDelegateByThreeParameters(p.person_id, agent_id, h.house_id);
            Dictionary<string, string> d = new Dictionary<string, string>();
            d.Add("levels", h.levels);
            d.Add("area", h.area.ToString());
            d.Add("orientation", h.orientation);
            d.Add("types", h.types);
            d.Add("decoration", h.decoration);
            d.Add("r*types", r.types);
            d.Add("r*payment", r.payment.ToString());
     
            d.Add("r*description", r.description);
            d.Add("room", h.room.ToString());
            d.Add("hall", h.hall.ToString());
            d.Add("toilet", h.toilet.ToString());
            d.Add("title", h.title);
            d.Add("a*city", a.city);
            d.Add("a*street", a.street);
            d.Add("a*area", a.area);
            d.Add("a*community", a.community);
            d.Add("p*names", p.names);
            d.Add("p*phone", p.phone);
            d.Add("p*email", p.email);
            d.Add("de*date", de.date.ToString());
            d.Add("de*messages", de.messages);
            d.Add("de*state", de.state);
            return d;
        }

        public static void setDelegateStatusToAgree(int house_id)
        {
            @delegate d = dc.@delegate.FirstOrDefault(c => c.house == house_id);
            d.state = "agree";
            dc.SubmitChanges();
        }
        public static void setDelegateStatusToRefuse(int house_id)
        {
            @delegate d = dc.@delegate.FirstOrDefault(c => c.house == house_id);
            d.state = "refuse";
            dc.SubmitChanges();
        }

        public static IQueryable findAllSaleManageByAgentId(int person_id)
        {
            var a = from m in dc.manage
                    from h in dc.house
                    from s in dc.salehouse
                    from me in dc.member
                    from p in dc.person
                    from ad in dc.address
                    where (m.agent == person_id) && (h.house_id == m.house) && (s.house_id == m.house) &&
                    (p.person_id == h.member) && (p.person_id == me.person_id) && (ad.address_id == h.address)
                    select new
                    {
                        HouseId = h.house_id,
                        CommunityName = ad.community,
                        OwnerName = p.names,
                        Price = s.price
                    };

            return a;
        }

        public static IQueryable findAllRentManageByAgentId(int person_id)
        {
            var a = from m in dc.manage
                    from h in dc.house
                    from r in dc.renthouse
                    from me in dc.member
                    from p in dc.person
                    from ad in dc.address
                    where (m.agent == person_id) && (h.house_id == m.house) && (r.house_id == m.house) &&
                    (p.person_id == h.member) && (p.person_id == me.person_id) && (ad.address_id == h.address)
                    select new
                    {
                        HouseId = h.house_id,
                        CommunityName = ad.community,
                        OwnerName = p.names,
                        Payment = r.payment
                    };

            return a;
        }

        public static int getSaleManageCountByPersonId(int person_id)
        {
            var p =
                 from m in dc.manage
                 from s in dc.salehouse
                 where (m.house == s.house_id) && (m.agent == person_id)
                 select s.house_id;

            int a = p.Count();
            return a;
        }

        public static int getRentManageCountByPersonId(int person_id)
        {
            var p =
                 from m in dc.manage
                 from r in dc.renthouse
                 where (m.house == r.house_id) && (m.agent == person_id)
                 select r.house_id;

            int a = p.Count();
            return a;
        }


        public static IQueryable getAnEmptyDelegateSource(int person_id)  //借助person_id使其只能选出一条数据
        {
            var p = from c in dc.person
                    where c.person_id == person_id
                    select new
                    {
                        HouseId = "暂无",
                        Community_Name = "暂无",
                        Mianji = "暂无",
                        Price = "暂无"
                    };
            return p;
        }

        public static IQueryable getAnEmptySaleManageSource(int person_id)
        {
            var p = from c in dc.person
                    where c.person_id == person_id
                    select new
                    {
                        HouseId = "暂无",
                        CommunityName = "暂无",
                        OwnerName = "暂无",
                        Price = "暂无"
                    };
            return p;
        }
        public static IQueryable getAnEmptyRentManageSource(int person_id)
        {
            var p = from c in dc.person
                    where c.person_id == person_id
                    select new
                    {
                        HouseId = "暂无",
                        CommunityName = "暂无",
                        OwnerName = "暂无",
                        Payment = "暂无"
                    };
            return p;
        }

        public static bool changePassword(string old_pass, string new_pass,int person_id)
        {
            var p = dc.person.FirstOrDefault(a => a.person_id == person_id);
            if (p.password == old_pass)
            {
                p.password = new_pass;
                return true;
            }
            else
                return false;

        }
    }
}
