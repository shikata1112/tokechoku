Rails.application.config.generators do |g|
  g.helper false
  g.assets false
  g.template_engine :haml
  g.skip_routes true
  g.test_framework false
end