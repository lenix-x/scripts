Config = {}
Config.core = "qb-core" -- اسم الكور
Config.target = "qb-target" -- اسم التارقت 

Config.stash = {
    ["lostmc"] = { -- اسم العصابة او الوظيفة 
        coords = vector3(977.56, -104.56, 74.85), -- الاحداثيات
        heading = 39.97, --- الهيدينق
        maxweight = 2000, -- كم عدد المساحة الي بالخزنة
        slots = 50, -- كم مربع تبي بالخزنة
        minZ= 73.05, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        maxZ= 77.05, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        label = " الخزنة  ", -- الكلام الي جي فالتارقت
        distance = 2.0, -- المسافة حقت العين
        gang = "lostmc",  -- none اسم العصابة اذا ماتبي اي عصابة تفتح الخزنة خلها
        job = "none", -- none اسم الوظيفة اذا ماتبي اي وظيفة تفتح الخزنة خلها
    },
    ["mafia"] = { -- اسم العصابة او الوظيفة 
        coords = vector3(-1791.64, 427.7, 132.27), -- الاحداثيات
        heading = 0, --- الهيدينق
        maxweight = 20000, -- كم عدد المساحة الي بالخزنة
        slots = 250, -- كم مربع تبي بالخزنة
        minZ= 130.67, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        maxZ= 134.67, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        label = " الخزنة  ", -- الكلام الي جي فالتارقت
        distance = 2.0, -- المسافة حقت العين
        gang = "mafia",  -- none اسم العصابة اذا ماتبي اي عصابة تفتح الخزنة خلها
        job = "none", -- none اسم الوظيفة اذا ماتبي اي وظيفة تفتح الخزنة خلها
    },
    ["ballas"] = { -- اسم العصابة او الوظيفة 
        coords = vector3(118.25, -1962.99, 21.33), -- الاحداثيات
        heading =  65.43, --- الهيدينق
        maxweight = 2000, -- كم عدد المساحة الي بالخزنة
        slots = 50, -- كم مربع تبي بالخزنة
        minZ= 18.73, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        maxZ= 22.73, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        label = " الخزنة  ", -- الكلام الي جي فالتارقت
        distance = 2.0, -- المسافة حقت العين
        gang = "ballas",  -- none اسم العصابة اذا ماتبي اي عصابة تفتح الخزنة خلها
        job = "none", -- none اسم الوظيفة اذا ماتبي اي وظيفة تفتح الخزنة خلها
    },
    ["vagos"] = { -- اسم العصابة او الوظيفة 
        coords = vector3(345.32, -2021.44, 22.39), -- الاحداثيات
        heading = 51, --- الهيدينق
        maxweight = 2000, -- كم عدد المساحة الي بالخزنة
        slots = 50, -- كم مربع تبي بالخزنة
        minZ= 20.19, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        maxZ= 24.19, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        label = " الخزنة  ", -- الكلام الي جي فالتارقت
        distance = 2.0, -- المسافة حقت العين
        gang = "vagos",  -- none اسم العصابة اذا ماتبي اي عصابة تفتح الخزنة خلها
        job = "none", -- none اسم الوظيفة اذا ماتبي اي وظيفة تفتح الخزنة خلها
    },
    ["bloods"] = { -- اسم العصابة او الوظيفة 
        coords = vector3(-1567.63, -402.57, 48.29), -- الاحداثيات
        heading = 48, --- الهيدينق
        maxweight = 2000, -- كم عدد المساحة الي بالخزنة
        slots = 50, -- كم مربع تبي بالخزنة
        minZ= 45.49, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        maxZ= 49.49, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        label = " الخزنة  ", -- الكلام الي جي فالتارقت
        distance = 2.0, -- المسافة حقت العين
        gang = "bloods",  -- none اسم العصابة اذا ماتبي اي عصابة تفتح الخزنة خلها
        job = "none", -- none اسم الوظيفة اذا ماتبي اي وظيفة تفتح الخزنة خلها
    },
    ["gangleaders"] = { -- اسم العصابة او الوظيفة 
        coords = vector3(-57.7, 981.42, 234.58), -- الاحداثيات
        heading = 293, --- الهيدينق
        maxweight = 2000, -- كم عدد المساحة الي بالخزنة
        slots = 250, -- كم مربع تبي بالخزنة
        minZ= 231.13, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        maxZ= 235.13, -- /pzcreate box يجيك مع الاحداثيات حق البوكس زون
        label = " الخزنة  ", -- الكلام الي جي فالتارقت
        distance = 2.0, -- المسافة حقت العين
        gang = "gangleaders",  -- none اسم العصابة اذا ماتبي اي عصابة تفتح الخزنة خلها
        job = "none", -- none اسم الوظيفة اذا ماتبي اي وظيفة تفتح الخزنة خلها
    },
}

-- V7Store: https://discord.gg/5pFWEGkDtv

--AR
-- قدر مجهودنا ب انك تخش المتجر
--EN
-- join discord