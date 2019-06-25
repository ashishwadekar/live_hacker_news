defmodule LiveHackerNewsWeb.HnPostLive do
  use Phoenix.LiveView

  def mount(_session, socket) do
    # Assign a random funny name
    usernames = ["Flowers_Hnads","Websites_Ice_cream","Breakfast_YouTube","YouTube_Ice_cream_cone","Ice_cream_cone_Fence","Video_games_System","Cone_Toolbox","Video_games_Printer","Ring_Drugs","Ice_cream_Solar", "Dislike_Poop","Light_saber_Clock","Book_Shoe","Towel_BBQ","Ice_cream_cone_Prints","Sink_Bird","Plus_Laptop","Breakfast_Video_games","Comics_Trees","Android_Breakfast", "Monster_Poop","Websites_Water","Allergies_Crab","Fusion_Crab","Toolbox_Trees","Ice_cream_cone_Horse","Nuclear_Laptop","Fusion_Trees","Fusion_Printer","Water_Toilet", "Soda_Monster","Settings_Breakfast","Sink_Comics","Monster_Trees","Hnads_Whale","Comics_Websites","Prints_Fence","Elevator_Clock","Mail_Monster","Ice_cream_cone_Fusion", "Ring_Robot","Dog_Breakfast","Male_Websites","Dog_Shoe","Ring_Male","Websites_Printer","Leash_Bird","Light_saber_Cat","Breakfast_Boat","Clock_Printer"]
    username = Enum.random(usernames)

    {:ok, assign(socket, username: username)}
  end

  def render(assigns) do
    LiveHackerNewsWeb.PostView.render("post_index.html", assigns)
  end
end