.class public Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcom/alipay/mobile/security/authcenter/ui/w;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->a:Lcom/alipay/mobile/security/authcenter/ui/w;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->a:Lcom/alipay/mobile/security/authcenter/ui/w;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;)Lcom/alipay/mobile/security/authcenter/ui/w;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->a:Lcom/alipay/mobile/security/authcenter/ui/w;

    return-object v0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 3

    const/16 v2, 0x64

    sub-int v0, p4, p2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->a:Lcom/alipay/mobile/security/authcenter/ui/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/u;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/u;-><init>(Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sub-int v0, p2, p4

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->a:Lcom/alipay/mobile/security/authcenter/ui/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/v;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/v;-><init>(Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setKeyboardHiddenListener(Lcom/alipay/mobile/security/authcenter/ui/w;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/KeyboardHiddenAwareLayout;->a:Lcom/alipay/mobile/security/authcenter/ui/w;

    return-void
.end method
