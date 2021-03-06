//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProductManagement.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class ProductManage
    {   
        public int ID { get; set; }
        [Required(ErrorMessage = "Please insert Product Name.")]
        public string Product_Name { get; set; }

        [Required(ErrorMessage = "Please Choose Category.")]
        public string Category { get; set; }
        [Required(ErrorMessage = "Please insert Price.")]
        [RegularExpression("[+-]?[0-9][0-9]*", ErrorMessage ="Price Must be integer!")]
        public string Price { get; set; }
        
        [Required(ErrorMessage = "Please insert Quantity.")]
        public string Quantity { get; set; }

        [Required(ErrorMessage = "Please write Short Description.")]
        [StringLength(50, MinimumLength = 3, ErrorMessage = "Please Keep it Short!")]
        public string Short_Description { get; set; }
        public string Long_Description { get; set; }
        public string Small_Image { get; set; }
        public string Large_Image { get; set; }
    }
}
