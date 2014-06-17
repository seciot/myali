.class final Lcom/alipay/mobile/alipassapp/ui/common/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/common/m;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/m;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/n;->b:Lcom/alipay/mobile/alipassapp/ui/common/m;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/n;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/n;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/n;->b:Lcom/alipay/mobile/alipassapp/ui/common/m;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/k;->d(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/n;->b:Lcom/alipay/mobile/alipassapp/ui/common/m;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/m;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
