using Microsoft.AspNetCore.Mvc;
using NB_MVCTest.Data;
using NB_MVCTest.Models;

namespace NB_MVCTest.Controllers
{
    //User controller -> to get list of users
    public class UserController : Controller
    {
        private readonly ApplicationDbContext _db;

        public UserController(ApplicationDbContext db)
        {
            _db = db;
        }

        // action to
        // 1. get list of user
        // 2. get user that is searched for by either email id or first name
        public IActionResult Index(string strSearch)
        {
            List<User> user = _db.Users.ToList();

            if (!string.IsNullOrEmpty(strSearch))
            {
                user = user.Where(s => s.FirstName.ToLower().Contains(strSearch)
                || s.EmailId.ToLower().Contains(strSearch)).ToList();
            }

            return View(user);
        }
    }
}
