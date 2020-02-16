defmodule MadElixirLibs.Mailer do
    use Bamboo.Mailer, otp_app: :mad_elixir_libs
    alias MadElixirLibs.Email

    def send_email(email_address) do
        Email.lib_email(email_address)
        |> deliver_now()
    end
end