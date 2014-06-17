.class final Lcom/alipay/mobile/alipassapp/ui/common/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/k;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/k;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/o;->a:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/o;->a:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/k;->e(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/o;->a:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/k;->c(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/o;->a:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/k;->e(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/o;->a:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/k;->f(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/o;->a:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/k;->g(Lcom/alipay/mobile/alipassapp/ui/common/k;)Lcom/alipay/mobile/alipassapp/ui/common/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/o;->a:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/k;->g(Lcom/alipay/mobile/alipassapp/ui/common/k;)Lcom/alipay/mobile/alipassapp/ui/common/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/ui/common/p;->e()V

    :cond_1
    return-void
.end method
