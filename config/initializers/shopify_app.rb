ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "<api_key>"
  config.secret = "<secret>"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
