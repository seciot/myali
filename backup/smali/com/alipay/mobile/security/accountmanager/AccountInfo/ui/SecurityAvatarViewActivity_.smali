.class public final Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;
.super Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;->b:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bv:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/u;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/u;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/v;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/v;-><init>(Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/SecurityAvatarViewActivity_;->a()V

    return-void
.end method
