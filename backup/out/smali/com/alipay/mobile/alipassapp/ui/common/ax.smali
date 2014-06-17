.class public Lcom/alipay/mobile/alipassapp/ui/common/ax;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Z

.field private d:I

.field private e:Z

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/common/ax;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->b:Ljava/lang/String;

    const/16 v0, 0xd8

    sput v0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->e:Z

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->f:Landroid/content/Context;

    iput p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->d:I

    iput-boolean p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/alipassapp/ui/common/ax;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/common/ax;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get current brightness ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";    mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/ax;

    invoke-direct {v1, p0, v2, v0}, Lcom/alipay/mobile/alipassapp/ui/common/ax;-><init>(Landroid/content/Context;IZ)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 4

    if-nez p2, :cond_2

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    sget v0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a:I

    :goto_0
    if-gez v0, :cond_0

    sget v0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a:I

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "ScreenBrightnessTool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8bbe\u7f6e\u4eae\u5ea6 ScreenBrightnessTool.setBrightness("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") \u8fd4\u56de\u7ed3\u679c\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_1
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    int-to-float v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x3b808081

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(I)V

    :goto_1
    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->d:I

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(IZ)V

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->d:I

    invoke-static {p1, v0}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(Landroid/app/Activity;I)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6062\u590d \u8bbe\u7f6eactivity\u4eae\u5ea6\uff1abrightness = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(I)V

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;II)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->d:I

    if-ge v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(I)V

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(IZ)V

    invoke-static {p1, p2}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(Landroid/app/Activity;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->e:Z

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8bbe\u7f6eactivity\u4eae\u5ea6\uff1abrightness = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".toString() = sysBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";sysAutomaticMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ax;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
