using System.ComponentModel.DataAnnotations;

namespace NB_MVCTest.Models
{
    //model class for user table
    public class User
    {
        // Id -> PK
        public int Id { get; set; }

        // First name
        [Required(ErrorMessage = "First Name is required!")]
        public string FirstName { get; set; } = string.Empty;

        //email id
        [Required(ErrorMessage = "Emmail Id is required!")]
        public string EmailId { get; set; } = string.Empty;

        // user name
        public string UserName { get; set; } = string.Empty;

        // date of birth of user
        public string BirthDate { get; set; } = string.Empty;

    }
}
