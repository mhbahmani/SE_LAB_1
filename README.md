# SE_LAB_1

## Team members
* MohammadHosein Bahmani
* Ali Shirmohammadi

## Steps to make this repository
1- First we created a new repository on github  
2- Then we cloned it to our local machine  
3- Then we created requirements.txt file and put the required libraries in it  
4- Then we created .gitignore file and put the files that we don't want to push to github in it. For choosing the files we used [gitignore.io](https://www.toptal.com/developers/gitignore)  
5- Then we created the main file and put the first api in it  
6- For having better package structure we created a folder named src for the api and put the moved the main file to it.  
7- The next step was to create branches for adding ci/cd and dockerfile to the project and then merge them to the main branch.  
8- There is a mistake in ci/cd related branch commit message. The mistake is that we use "and" word in commit message and actually changed two different things in the commit. This mistake raised by project leader and won't happen again.  
9- Another part was fixing the merge conflicts. In [this](https://github.com/mhbahmani/SE_LAB_1/commit/477fe1526f391a4565a5a6ca781119ad5e8382f0) commit we was merging one branch to the master branch and there was a conflict in the main file. We fixed it by choosing the correct lines from the two branches.  
10- Also we had some pull requests in this projects that two of them are accessible in [this](https://github.com/mhbahmani/SE_LAB_1/pull/1) and [this](https://github.com/mhbahmani/SE_LAB_1/pull/2) links.
11- In order to having a better git flow, we set master branch as a protected branch and set the rules for merging to it.  

<div dir="rtl">

## پاسخ سوالات تئوری
### فایل .git
پوشه .git پوشه اصلی نگه‌داری Logها و تمامی اطلاعات در یک مخزن گیت می‌باشد. این اطلاعات شامل درخت کامیت‌ها و تغییرات ایجاد شده در هر کامیت نسبت به کامیت قبلی، اطلاعات مخازن Remote، اشاره‌گر هر یک از Branchها و برنچ کنونی و... می‌باشد.
بعنوان مثال چند نمونه از محتویات اصلی داخل این پوشه به شرح زیر است:
- پوشه Hooks: اسکریپت‌های Hook که قبل یا بعد از رویداد خاصی (مثل کامیت شدن، پوش شدن و... اجرا می‌شوند)
- پوشه HEAD: اشاره‌گرهایی به هر یک از branchهای موجود در نسخه کنونی مخزن
- پوشه Objects: اطلاعات فایل‌های موجود در هر کامیت به صورت Hash شده

### معنی Atomic commit و Atomic pull request
بدین معنی است که در هر کامیت تنها یک کار مجزا باید انجام شود. همچنین Commitهای مربوط به bugfix یا refactoring یا features باید از یکدگیر جدا شوند. هر کامیت باید از کامیت کردن تغییرات متعدد به صورت یکجا پرهیز گردد و هر کامیت باید تنها یک گام ما را به حالت مورد انتظار نزدیک کند. همچنین باید توجه داشت که هر کامیت باید کد را در یک موقعیت Valid نگه دارد.
همچنین Atomic pull request بدین معنی است که حتی الامکان باید pull requestها به کارهای کوچکتر شکسته شوند و review کردن آن‌ها نباید چندین ساعت طول بکشد و به جای یک تسک بزرگ، کارها به تعداد بیشتری task یا issueی کوچک شکسته شوند که هر یک در یک PR قابل انجام باشند.

### تفاوت Fetch، Pull و Merge
دستور Fetch صرفا اطلاعات موجود در مخزن را نسبت به یکی از مخازن Remote به روز می‌کند. یعنی اشیاء و Branchهای پروژه را از یک مخزن Remote دانلود کرده و در پوشه .git ذخیره می‌کند. اما دستور pull هم تغییرات را از مخازن Remote می‌گید، هم آن‌ها را با نسخه‌ی کنونی ادغام می‌کند. عملیات Merge نیز یکی از راه‌های ادغام دو نسخه است بدین صورت که فایل‌های تغییر یافته در یک نسخه که در نسخه‌ی دیگر تغییر پیدا نکرده‌اند در نسخه‌ی نهایی تغییر می‌کنند و قسمت‌هایی که در هر دو نسخه تغییر کرده‌اند دچار تعارض (Conflict) می‌شوند و توسط شخصی که آن‌ها را ادغام کرده باید برطرف شوند.

### عملیات Stage و دستور stash در git
عملیات Stage بدین معنی است که شما تعدادی از فایل‌های تغییر کرده در این نسخه را علامت گذاری می‌کنید تا در Snapshot کامیت بعدی حضور داشته باشند. هنگامی که این تغییرات کامیت شوند با موفقیت در دیتابیس محلی مخزن شما ذخیره می‌شوند. دستور `stash` به صورت موقت تغییراتی که شما انجام داده‌اید ولی هنوز کامیت نکرده‌اید را کنار می‌گذارد تا بتوانید روی چیز دیگری کار کنید و سپس می‌توانید برگردید و دوباره تغییرات قبلی را اعمال کنید.

### Snapshot چیست؟
انسپ‌شات معادل یک کامیت است. با هر کامیت، گیت یک اسنپ شات از وضعیت فعلی پروژه ذخیر می‌کند. در نگاه اول مشخص است که نگه‌داری وضعیت کل پروژه در تمامی کامیت‌ها، نیازمند نگه‌داری حجم زیادی دیتاست که کار بهینه‌ای نیست. برای حل این مشکل، گیت فقط تغییرات نسبت به کامیت قبل را در هر کامیت نگه داری می‌کند و با استفاده از این تغییرات می‌تواند نسخه‌های قدیمی‌تر را بسازد.
</div>
