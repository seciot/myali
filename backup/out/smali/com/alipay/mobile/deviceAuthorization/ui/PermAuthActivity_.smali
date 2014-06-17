.class public final Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity_;
.super Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity_;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity_;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity_;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/ap;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/ap;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity_;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->f:I

    invoke-super {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/PermAuthActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
