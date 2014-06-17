.class final Lcom/alipay/mobile/alipassapp/ui/common/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/common/k;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/k;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/l;->b:Lcom/alipay/mobile/alipassapp/ui/common/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/l;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/l;->b:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/k;->c(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/l;->b:Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/l;->b:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/l;->b:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/common/k;->b(Lcom/alipay/mobile/alipassapp/ui/common/k;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/l;->a:Landroid/os/Bundle;

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/alipassapp/ui/common/k;Landroid/content/Context;Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method
