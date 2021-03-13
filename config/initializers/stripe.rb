Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_51IMDvuEcgMPG6ZFCjoAgyRGl9esC4QHiHrQkk1kuhi4Lx93UH4JvTAocaq15IzvyH9d2iTBALLWxvJxlZbdpPCHV00GQ5c9JdU'],
  secret_key:      ENV['sk_test_51IMDvuEcgMPG6ZFCDRe4dPOwq1RXU3zPdmseMBtyQIpMb5ZF7Rbi2h62DivNtSbEDi6ZQy88uXNG4STpBFwtTLnf00tlBQvvpy'],  
  signing_secret:  ENV['whsec_qpaOYxLazmxh0MPKNuhcREOkE9zJhdHR']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
StripeEvent.signing_secret = Rails.configuration.stripe[:signing_secret]
StripeEvent.configure do |events|  #WEBHOOK STRIPE
  events.subscribe 'checkout.session.completed', StripeCheckoutSessionService.new
end