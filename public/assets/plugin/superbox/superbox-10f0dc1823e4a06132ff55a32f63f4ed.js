!function(t){t.fn.SuperBox=function(){var s=t('<div class="superbox-show"></div>'),i=t('<img src="" class="superbox-current-img"><div id="imgInfoBox" class="superbox-imageinfo inline-block"><h1>Image Title</h1><span><p><em></em></p><p class="superbox-img-description">Image description</p><p><a class="btn btn-primary btn-sm" data-toggle="modal">\u4fee\u6539</a>&nbsp;&nbsp;<a class="btn btn-danger btn-sm" data-method="delete" data-title="\u60a8\u786e\u8ba4\u8981\u5220\u9664\u56fe\u7247\uff1f" data-confirm="\u56fe\u7247\u5220\u9664\u540e\u5c06\u65e0\u6cd5\u6062\u590d\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c\uff01">\u5220\u9664</a></p></span></div>'),e=t('<div class="superbox-close txt-color-white"><i class="fa fa-times fa-lg"></i></div>');s.append(i).append(e);t(".superbox-imageinfo");return this.each(function(){t(".superbox-list").click(function(){$this=t(this);var e=$this.find(".superbox-img"),a=e.data("img"),o=e.attr("alt")||"\u76f8\u7247\u8fd8\u6ca1\u6709\u6dfb\u52a0\u63cf\u8ff0\u4fe1\u606f",r=e.attr("title")||"\u76f8\u7247\u8fd8\u6ca1\u6709\u540d\u79f0";photoId=e.attr("photo_id"),createdAt=e.attr("created_at"),i.attr("src",a),t(".superbox-list").removeClass("active"),$this.addClass("active"),i.find("em").text(createdAt),i.find(">:first-child").text(r),i.find(".superbox-img-description").text(o),i.find(".btn.btn-primary.btn-sm").attr("href","/admin/photos/"+photoId+"/edit"),i.find(".btn.btn-primary.btn-sm").attr("data-target","#myModal_"+photoId),i.find(".btn.btn-danger.btn-sm").attr("href","/admin/photos/"+photoId),0==t(".superbox-current-img").css("opacity")&&t(".superbox-current-img").animate({opacity:1}),t(this).next().hasClass("superbox-show")?(t(".superbox-list").removeClass("active"),s.toggle()):(s.insertAfter(this).css("display","block"),$this.addClass("active")),t("html, body").animate({scrollTop:s.position().top-e.width()},"medium")}),t(".superbox").on("click",".superbox-close",function(){t(".superbox-list").removeClass("active"),t(".superbox-current-img").animate({opacity:0},200,function(){t(".superbox-show").slideUp()})})})}}(jQuery);