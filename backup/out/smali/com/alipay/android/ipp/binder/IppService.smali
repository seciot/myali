.class public Lcom/alipay/android/ipp/binder/IppService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/ipp/binder/IppService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/ipp/binder/IppService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/ipp/binder/IppService;->b:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/alipay/android/ipp/binder/IppService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/ipp/binder/IppService;)V
    .locals 2

    sget-object v0, Lcom/alipay/android/ipp/binder/IppService;->a:Ljava/lang/String;

    const-string/jumbo v1, "to do sth. After Evoked!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.ali.android.ipp.after.evoked"

    const-string/jumbo v0, ""

    invoke-direct {p0, v1}, Lcom/alipay/android/ipp/binder/IppService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/alipay/android/ipp/binder/IppService;->a:Ljava/lang/String;

    const-string/jumbo v1, "No Class Name Defined! Return Back!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/ipp/AfterEvoked;

    invoke-interface {v0}, Lcom/alipay/android/ipp/AfterEvoked;->onEvoke()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$1(Lcom/alipay/android/ipp/binder/IppService;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/alipay/android/ipp/binder/IppService;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/ipp/binder/IppService;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "First Call!"

    invoke-static {v0}, Lcom/alipay/android/ipp/binder/IppService;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/ipp/binder/IppService;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Has Been Binded!"

    invoke-static {v0}, Lcom/alipay/android/ipp/binder/IppService;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/ipp/binder/IppService;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/ipp/binder/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/ipp/binder/b;-><init>(Lcom/alipay/android/ipp/binder/IppService;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/ipp/binder/IppService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/ipp/binder/IppService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is not defined in the manifest file\'s meta data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/ipp/binder/IppService;->a(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Could not read the name in the manifest file."

    invoke-static {v1}, Lcom/alipay/android/ipp/binder/IppService;->a(Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string/jumbo v0, "onBind()"

    invoke-static {v0}, Lcom/alipay/android/ipp/binder/IppService;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "get Binder"

    invoke-static {v0}, Lcom/alipay/android/ipp/binder/IppService;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/ipp/binder/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/ipp/binder/a;-><init>(Lcom/alipay/android/ipp/binder/IppService;)V

    return-object v0
.end method
