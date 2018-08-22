ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'Ultimas Ideas agregadas' do
          ul do
            Idea.last(5).map do |idea|
              li link_to(idea.name, admin_idea_path(idea))
            end
          end
        end
      end
      column do
        panel 'Usuarios' do
          ul do
            li "Usuarios registrados: #{User.count}"
            li "Administradores registrados: #{AdminUser.count}"
          end

        end
      end

      column do
        panel 'IDEAS' do
          ul do
            li "Ideas Creadas: #{Idea.count}"
            li "LikesDislikes creados: #{IdeaLike.count}"
          end
        end
      end
    end



  end # content
end
