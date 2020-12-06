json.(product, :id, :name, :description, :price, :status)
json.image_url rails_blob_url(product.image)
json.productable product.productable_type.underscore

# changing to send an array of categories
json.categories product.categories

# adding system_requirement
json.system_requirement product.productable.system_requirement