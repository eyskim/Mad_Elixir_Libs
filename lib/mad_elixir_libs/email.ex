defmodule MadElixirLibs.Email do
    import Bamboo.Email
    use Bamboo.Phoenix, view: MadElixirLibsWeb.LayoutView

    def lib_email(email_address) do
        IO.puts("beg of lib_email")
        base_email()
        |> to(email_address)
        |> subject("Your Mad Elixir Lib!")
        # |> render("email.html", email_address: email_address)
        |> render("email.text", email_address: email_address)
    end
    
    defp base_email do
        new_email()
        |> from("mad.elixir.libs@gmail.com")
        # |> put_html_layout({MadElixirLibsWeb.LayoutView, "email.html"})
        # |> put_text_layout({MadElixirLibsWeb.LayoutView, "email.text"})
    end
end