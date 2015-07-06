class UserMailer < ActionMailer::Base
    default from: "Bonativo <launch@bonativo.de>"

    def signup_email(user)
        @user = user
        @twitter_message = "Der Wochenmarkt kommt online mit @bonativo."

        mail(:to => user.email, :subject => "Der Wochenmarkt kommt zu Dir!")
    end
end
