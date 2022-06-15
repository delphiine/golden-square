require 'password_checker'

RSpec.describe PasswordChecker do
    it "returns 'true' when the password is at least 8 characters long" do
        password = PasswordChecker.new
        expect(password.check("helloworld123")).to eq true
    end
    it "returns error message when password is shorter than 8 characters" do
        password = PasswordChecker.new
        expect{password.check("hiworld")}.to raise_error "Invalid password, must be 8+ characters."
    end
end