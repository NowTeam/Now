do

local function run(msg, matches)
  if matches[1] == 'من' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "/root/robot/sudo.webp", ok_cb, false)
      return "شما سودو هستید"
    elseif is_admin(msg) then
    send_document(get_receiver(msg), "/root/robot/admin.webp", ok_cb, false)
      return "شما ادمین هستید"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "/root/robot/owner.webp", ok_cb, false)
      return "شما صاحاب گروه هستید"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "/root/robot/mod.webp", ok_cb, false)
      return "شما دستیار مدیر گروه هستید"
    else
    send_document(get_receiver(msg), "/root/robot/mmbr.webp", ok_cb, false)
      return "شما کاربر عادی هستید"
    end
  end
end

return {
  patterns = {
    "^[!/]([Mm]e)$",
    "^(من)$"
    },
  run = run
}
end
