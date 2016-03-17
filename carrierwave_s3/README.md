## Important parts about carrierwave


CarrierWave gives you a store for permanent storage, and a cache for temporary storage. You can use different stores, including filesystem and cloud storage.



## Uploads

In order to change where uploaded files are put, just override the store_dir method:

class MyUploader < CarrierWave::Uploader::Base
  def store_dir
    'public/my/upload/directory'
  end
end




## IN console:

i = Image.new
=> #<Image id: nil, user_id: nil, title: nil, created_at: nil, updated_at: nil, avatar: nil>
2.2.4 :008 > File.open(File.join("#{Rails.root}","spec/support/images/blueapron.jpg")) do |f|
2.2.4 :009 >     i.avatar = f
2.2.4 :010?>   end
=> #<File:/Users/Jwan/Dropbox/programming/rails/carrierwave_s3/spec/support/images/blueapron.jpg (closed)>
2.2.4 :011 > i
=> #<Image id: nil, user_id: nil, title: nil, created_at: nil, updated_at: nil, avatar: nil>
2.2.4 :012 > i.avatar
=> #<AvatarUploader:0x007fd98cb03610 @model=#<Image id: nil, user_id: nil, title: nil, created_at: nil, updated_at: nil, avatar: nil>, @mounted_as=:avatar, @cache_id="1458181667-3251-1409", @filename="blueapron.jpg", @original_filename="blueapron.jpg", @file=#<CarrierWave::SanitizedFile:0x007fd98d3f1df8 @file="/Users/Jwan/Dropbox/programming/rails/carrierwave_s3/public/uploads/tmp/1458181667-3251-1409/blueapron.jpg", @original_filename=nil, @content_type="image/jpeg">, @versions={}>
2.2.4 :013 > i.avatar.url
=> "/uploads/tmp/1458181667-3251-1409/blueapron.jpg"
