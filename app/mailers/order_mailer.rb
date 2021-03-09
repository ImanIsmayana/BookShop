class OrderMailer < ApplicationMailer
    default from: 'Lesssugar <lesssugar@noreply.com>'
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.order_mailer.received.subject
    #
    def received
        @order = order

        mail to: "imanismayana@gmail.com", subject: order.email
        # mail to: order.email, subject: 'Pragmatic Store Order Confirmation'
    end

    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.order_mailer.shipped.subject
    #
    def shipped
        @greeting = "test rails 1111111"

        mail to: "timanismayana@gmail.com"
    end
end
