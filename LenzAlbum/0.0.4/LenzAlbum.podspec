Pod::Spec.new do |s|

  s.name         = "LenzAlbum"
  s.version      = "0.0.4"
  s.summary      = "LenzAlbum 图片 浏览器 和 图片选择器"
  s.description  = "Description:LenzAlbum 图片 浏览器 和 图片选择器。。"

  s.homepage     = "https://gitee.com/ppz_bj/LenzAlbum.git"

   s.license          = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "zero" => "511121933@qq.com" }

  s.source       = { :git => "https://gitee.com/ppz_bj/LenzAlbum.git", :tag => "#{s.version}" }

   s.platform     = :ios, "9.0"


   s.source_files  = "LenzAlbum/*.{h,m}"
   s.subspec 'model' do |ss|
   	ss.source_files = 'LenzAlbum/model/*{h,m}'
   end
    s.subspec '图片浏览' do |ss|
    ss.source_files = 'LenzAlbum/图片浏览/*.{h,m}'
      ss.subspec 'Views' do |sss|
    	  sss.source_files = 'LenzAlbum/图片浏览/Views/*.{h,m}'
      end
    end   

    s.subspec '图片选择' do |ss|
        ss.source_files = 'LenzAlbum/图片选择/*.{h,m}'
	ss.resource = 'LenzAlbum/图片选择/*.xib' 
    end 

    s.subspec 'Tool' do |ss|
    	ss.source_files = 'LenzAlbum/Tool/*.{h,m}'
    end  
    s.resource = 'LenzAlbum/Resources/LenzAlbumBundle.bundle' 
   
end
