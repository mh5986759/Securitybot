do

function run(msg, matches)

local locks = [[ 

ℹ️راهنما فارسی قفل ها به این شکل است :

🔺 #lock|unlock links (قفل لینک/ارسال لینک)
🔺 #lock|unlock sticker (قفل استیکر/ارسال استیکر)
🔺 #lock|unlock bot (قفل ورود ربات)
🔺 #lock|unlock flood (قفل ارسال پیام مکرر)
🔺 #lock|unlock spam (قفل ارسال هرزنامه)
🔺 #lock|unlock arabic (قفل گفتکو به زبان فارسی/عربی)
🔺 #lock|unlock member (قفل ورود افراد با لینک)
🔺 #lock|unlock rtl (کاربردی برای شما ندارد)
🔺 #lock|unlock contacts (قفل ارسال مخاطبین)
🔺 #lock|unlock strict (قفل تنظیمات سخت گیرانه)
🔺 #lock|unlock forward (قفل فوروارد مطالب)
🔺 #lock|unlock reply (قفل ریپلی روی پیام)
🔺 #lock|unlock hashtag (قفل ارسال هشتگ/#و@ ها)
🔺 #lock|unlock media (قفل ارسال رسانه شامل تصاویر/فیلم و...)
🔺 soon more lock :) 
🔺 #Security BOT

 ]]
 
 local silents = [[ 

ℹ️راهنمای فارسی حالت سکوت کاربران به شکل زیر است :

🔺 <b>[!/#]silent</b> [reply|username/userid] <i>(بردن به حالت سکوت کاربر)</i>

🔺 <b>[!/#]unsilent</b> [reply|username/userid] <i>(حذف از حالت سکوت کاربر)</i>

> <i>(انجام این دستوران به 3 شکل زیر قابل اجرا است:)</i>

1- <b>[!/#]silent</b> [reply] <i>(بردن به لیست سکوت یک کاربر با ریپلی بر روی پیام آن)</i>

2- <b>[!/#]silent</b> [username] <i>(بردن به حالت سکوت یک کاربر با یوزرنیم کاربر)</i>

3- <b>[!/#]silent</b> [userid] <i>(بردن به حالت سکوت یک کاربر با یوزرنیم کاربر)</i>

>و برای خارج کردن از این حالت هم به طریقه بالا عمل کنید

 ]]

 local welcome = [[ 

ℹ️راهنمای فارسی تنظیم پیغام خوش آمد گویی(دستورات) به شکل زیر است :

🔺 <b>[!/#]welcome</b> on <code>(فعال سازی حالت خوش آمد گویی)</code>

🔺 <b>[!/#]welcome</b> off <code>(غیرفعال کردن حالت خوش آمد گویی)</code>


>- <b>[!/#]/setwelcome</b> <code>text</code> <i>(تنظیم پیغام خوش آمد گویی)</i>

-مثال: <b>/setwelcome</b> <code>hello :-)</code>


>- <b>[!/#]delete welcome</b>  <i>(حذف پیغام خوش آمد گویی تنظیم شده و فعال سازی پیغام خوش آمد گویی پیشفرض)</i>


 ]]
 
 local groupreport = [[ 

ℹ️راهنمای فارسی فعال سازی/غیرفعال سازی گزارشات گروه به شکل زیر است :

🔺 <b>[!/#]group reports</b> enable <code>(فعال کردن ارسال گزارشات گروه توسط ربات)</code>

🔺 <b>[!/#]group reports</b> disable <code>(غیرفعال کردن ارسال گزارشات گروه توسط ربات)</code>


>- <code>(این گزارشات شامل تغییر نام گروه-تغییر تصویر پروفایل گروه و همچنین حذف آن خواهد بود)</code>


 ]]
 
 local mutechat = [[ 

ℹ️راهنمای فارسی فعال سازی/غیرفعال سازی فیلتر تمامی گفگو ها درگروه به شکل زیر است :

🔺 <b>[!/#]mutechat</b> <code>(فعال سازی فیلتر تمامی گفتگو ها)</code>

🔺 <b>[!/#]mutechat</b> ثانیه/دقیقه/ساعت <code>(فعال سازی فیلتر تمامی گفتگو ها برای مدت زمان تایین شده توسط شما)</code>
>- <code>(برای مثال اگر میخواهید گروه را برای 1 ساعت قفل کنید به شکل زیر عمل کنید)</code>
🔺 <b>[!/#]mutechat 1 0 0</b> --قفل کردن گروه برای مدت زمان 1 ساعت

>- <code>(مثالی دیگر: اگر میخواید گروه را برای مدت زمان 3 ساعت و 15 دقیقه و 9 ثانیه به حالت فیلتر تمامی گفتگو ها منتقل کنید به شکل زیر عمل کنید)</code>
🔺 <b>[!/#]mutechat 3 15 9</b> --قفل کردن گروه برای مدت زمان 3 ساعت و 15 دقیقه و 9 ثانیه

🔺 <b>[!/#]unmutechat</b> <code>(غیرفعال سازی فیلتر تمامی گفتگو ها)</code>


 ]]
 
local mods = [[ 

ℹ️راهنما فارسی مدیران به این شکل است :

> <b>[!/#]kick</b> <i>[Username | ID | Reply]</i>
<i>(اخراج عضو با ریپلی/شناسه /یوزرنیم)</i>

> <b>[!/#]infogroup</b> <i>[info supergroup]</i>
<i>(دریافت اطلاعات سوپرگروه)</i>

> <b>[!/#]banlist</b>
<i>(دریافت لیست کاربران مسدود شده از گروه)</i>

> <b>[!/#]res</b> <i>@username</i>
<i>(دریافت نام و شناسه فرد مورد نظر)</i>

> <b>[!/#]laws</b>
<i>(مشاهده قوانین)</i>

> <b>[!/#]more</b>
<i>(مشاهده اطلاعات بیشتر)</i>

 ]]
 
 local admin = [[ 
 
 با عرض پوزش راهنما ثبت نشده است!
 
 ]]
 
 local owner = [[
 
 ️راهنمای سوپرگروه(Security):

🔘(تنظیمات مربوط به قفل ها)
#lock|unlock links (قفل لینک/ارسال لینک)
#lock|unlock sticker (قفل استیکر/ارسال استیکر)
#lock|unlock bot (قفل ورود ربات)
#lock|unlock flood (قفل ارسال پیام مکرر)
#lock|unlock spam (قفل ارسال هرزنامه)
#lock|unlock arabic (قفل گفتکو به زبان فارسی/عربی)
#lock|unlock member (قفل ورود افراد با لینک)
#lock|unlock contacts (قفل ارسال مخاطبین)
#lock|unlock strict (قفل تنظیمات سخت گیرانه)
#lock|unlock hashtag (قفل ارسال هشتگ/#و@ ها)

🔘(حذف مطالب دلخواه)
#mute|unmute all (استفاده نکنید)
#mute|unmute text (پاک کردن خودکار متن)
#mute|unmute photo (پ کردن خودکار تصاویر)
#mute|unmute video (پاک کردن خودکار فیلم)
#mute|unmute gifs (پاک کردن خودکار گیف)
#mute|unmute audio (پاک کردن خودکار صدا)
#mute|unmute forward (پاک کردن خودکار مطالب فوروارد شده)

🔘(مسدود سازی کاربر/رفع مسدودیت/حالت سکوت و ... در گروه)
#ban @username (مسدود سازی یوزر)
#unban @username (خارج کردن از حالت مسدود سازی)
#muteuser @username (گرفتن توانایی چت کردن فرد مورد نظر در گروه)

🔘(بازنشانی قوانین/لیست مدیران و .... در گروه)
#clean laws (حذف قوانین قبت شده)
#clean managers (حذف لیست مدیران)
#clean mutelist (حذف لیست کاربران حالت سکوت)
#clean bots (حذف تمامی ربات های سوپرگروه)

🔘(اطلاعاتی درباره سوپرگروه) 
#infogroup (اطلاعات گروه)

🔘(لیست ادمین های گروه)
#admin list

🔘(مشاهده مالک گروه)
#Holder

🔘(مشاهده لیست مدیران در گروه)
#managers

🔘(مشاهده لیست ربات ها در گروه)
#bots

🔘(ارتقاء درجه شخص به مدیر)
#modset @username

🔘(عزل مقام از مدیر به عضو عادی)
#moddem @username

🔘(تنظیم نام گروه)
#setname

🔘(تنظیم تصویر پروفایل گروه)
#setphoto

🔘(تنظیم قوانین برای گروه)
#setlaws (متن قوانین)

🔘(تنظیم لینک گروه)
#setlink

🔘(دریافت لینک ورود به گروه)
#link

🔘(مشاهده قوانین تنظیم شده گروه)
#laws

🔘(تنظیم حساسیت نسبت به ارسال مکرر پیام)
#setflood [عدد]

🔘(مشاهده تنظیمات گروه)
#options

🔘(فیلتر کردن کلمات)
#addword (کلمه)
#rw (کلمه)
#clearbadwords

🔘(مشاهده تنظیمات سایلنت شده)
#muteslist

🔘(تنظیم پیام خوش آمد گویی ورود به گروه)
#setwlc متن دلخواه شما
#delwlc (حذف پیام خوش آمد گویی)

🔘(مشاهده تنظیمات قفل شده)
#options lock

🔘(مشاهده لیست افراد مسدود شده)
#banlist

🔘(پاک کردن پیام مورد نظر)
#del

🔘(مشاهده یوزر و نام آیدی مورد نظر)
#res @username


**You can use "#", or "/" to begin all commands
(شما میتوانید از "/" و "#" در اول دستورات استفاده کنید)

 ]]
 
 local member = [[
 
 ℹ️راهنمای فارسی کاربران عادی(Security BOT):
 
 
 > <b>[!/#]infome</b>
 <i>(دریافت اطلاعات خود)</i>
 
 > <b>[!/#]nerkh</b>
 <i>(دریافت نرخ فروش گروه با ربات)</i>
 
 > <b>[!/#]user id</b>
 <i>(دریافت شناسه خود)</i>  
 
 > <b>[!/#]laws</b>
<i>(مشاهده قوانین)</i>

> <b>[!/#]more</b>
<i>(مشاهده اطلاعات بیشتر)</i>
 
 > <b>[!/#]Security</b>
 <i>(مشاهده نسخه ربات)</i>
 
 
 ]]
 
 local sudo = [[
 
 با عرض پوزش راهنما ثبت نشده است!
 
 
 ]]
 
 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2] == nil then
     
    if is_sudo(msg) then 
        return reply_msg(msg.id, sudo, ok_cb, false)
    elseif is_admin1(msg) then 
        return reply_msg(msg.id, admin, ok_cb, false)
    elseif is_owner(msg) then 
        return reply_msg(msg.id, owner, ok_cb, false)
    elseif is_momod(msg) then 
         return reply_msg(msg.id, mods, ok_cb, false)
    else 
        return reply_msg(msg.id, member, ok_cb, false)
        end
end
 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'owner' then
     if is_owner(msg) then 
         return reply_msg(msg.id, owner, ok_cb, false)
    else return  reply_msg(msg.id, '<code>ℹ️فقط مدیر مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mod' then
     if is_momod(msg) then 
         return reply_msg(msg.id, mods, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end 

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'locks' then
     if is_owner(msg) then 
         return reply_msg(msg.id, locks, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end 

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'silent' then
     if is_owner(msg) then 
         return reply_msg(msg.id, silents, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'welcome' then 
     if is_owner(msg) then 
         return reply_msg(msg.id, welcome, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'group report' then 
     if is_owner(msg) then 
         return reply_msg(msg.id, groupreport, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'mutechat' then 
     if is_owner(msg) then 
         return reply_msg(msg.id, mutechat, ok_cb, false)
    else return reply_msg(msg.id, '<code>ℹ️فقط مالک گروه مجاز به مشاهده راهنما است</code>', ok_cb, false)
    end 
end

 if msg.to.type == 'channel' and matches[1]:lower() == 'help' and matches[2]:lower() == 'member' then
         return reply_msg(msg.id, member, ok_cb, false)
    end 
end

    
return {
 
  patterns = {
    "^[#/](help)$",
	"^[#/]([Hh]elp)$",
	"^[#/](help)$",
	
	"^[#/](help) (locks)$",
	"^[#/](help) (silent)$",
	"^[#/](help) (welcome)$",
	"^[#/](help) (group report)$",
	"^[#/](help) (mutechat)$",
	"^[#/](help) (mod)$",
	"^[#/](help) (owner)$",
	"^[#/](help) (member)$",
  }, 
  run = run 
}

end

