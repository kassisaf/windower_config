-------------------------------------------------------
--The handy dandy offensive magic skillup lua --
-------------------------------------------------------
 
-- For optimal results sub RDM and then use a tank, healer, and 3 buffer trusts. --
 
-- Edit the following Lines that correspond to your Job/Subjob setup with the lowest MP spell that you can for the skill that you need:
-- RDM Main Job: Edit Line 59
-- NIN Main Job: Edit Lines 69 & 70 -- Nin spells have a longer recast so using 2 is ideal -- Also see note below on Line 19
-- JOB Sub RDM:  Edit Line 79
-- Other JOBs:   Edit Line 89
-- You may need to adjust the wait time depending on the spell you are using to skill up with --
 
-- You must engage and then remain engaged for the script to run --
-- Auto attack the mob once to engage your trusts then stand back out of melee range --
-- Start the script by casting any spell, preferably the same one you are using for skill up --
-- Pause the script by pressing the F9 enable/disable toggle --
-- Unload the script by loading a different gearswap file --
 
-- Note: This does not currently work well for ninjitsu since it lacks ninja tool detection. --
-- Bring lots of tools for the spell you are using. F9 pause to use a toolbag then start skilling again. --
 
 
-- Do Not Edit This --
function get_sets()
    send_command('bind f9 gs c toggle Skillup')
    function file_unload()
        send_command('unbind f9')
    end
end
 
-- Do Not Edit This --
Skill_ind = 1
 
-- Do Not Edit This --
function self_command(command)
    if command == 'toggle Skillup' then
        Skill_ind = Skill_ind +1
        if Skill_ind > 2 then
            Skill_ind = 1
        end
        if Skill_ind == 1 then
            send_command('@input /echo <----- Skill Up Enabled ----->')
        end
        if Skill_ind == 2 then
            send_command('@input /echo <----- Skill Up Disabled ----->')
        end
    end
end
 
-- Edit this with the spell that you want to skill up --
function aftercast(spell)
    if Skill_ind == 1 then
        if player.status == 'Engaged' then
           send_command('wait 1.5;input /ma "Dia" <t>')
           
            -- -- Rules for RDM Main job   Keeps Composure and Refresh up at all times --
            -- if player.main_job == 'RDM' then
            --     if buffactive['Composure'] then
            --         if buffactive['Refresh'] then
            --             send_command('wait 2.0;input /ma "Poison" <t>')
            --         else
            --             send_command('wait 2.0;input /ma "Refresh" <me>')
            --         end
            --     else
            --         send_command('wait 2.0;input /ja "Composure" <me>')
            --     end
           
            -- -- Rules for NIN Main Job --
            -- elseif player.main_job == 'NIN' then
            --     if buffactive['Yonin'] then
            --         send_command('wait 2.0;input /ma "Hyoton: Ichi" <t>')
            --         send_command('wait 2.0;input /ma "Hyoton: Ni" <t>')
            --     else
            --         send_command('wait 2.0;input /ja "Yonin" <me>')
            --     end
           
            -- -- Rules for RDM sub    Keeps Refresh up at all times --   
            -- elseif player.sub_job == 'RDM' then
            --     if buffactive['Refresh'] then
            --         send_command('wait 2.0;input /ma "Stone" <t>')
            --     else
            --         send_command('wait 2.0;input /ma "Refresh" <me>')
            --     end
   
   
            -- -- Rules for any sub other than RDM -- 
            -- else
            --     send_command('wait 2.0;input /ma "Dia" <t>')
            -- end
        end
    end
end