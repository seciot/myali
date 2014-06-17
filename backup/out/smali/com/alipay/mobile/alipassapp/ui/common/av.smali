.class final Lcom/alipay/mobile/alipassapp/ui/common/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/common/au;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/au;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/av;->c:Lcom/alipay/mobile/alipassapp/ui/common/au;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/av;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/av;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/av;->c:Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/au;->b:Lcom/alipay/mobile/alipassapp/ui/common/ax;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/av;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/av;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
