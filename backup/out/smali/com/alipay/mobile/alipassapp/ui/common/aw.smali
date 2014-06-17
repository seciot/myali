.class final Lcom/alipay/mobile/alipassapp/ui/common/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/common/au;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/au;Lcom/alipay/mobile/framework/app/ui/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/aw;->b:Lcom/alipay/mobile/alipassapp/ui/common/au;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/aw;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/aw;->b:Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/au;->b:Lcom/alipay/mobile/alipassapp/ui/common/ax;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/aw;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ax;->a(Landroid/app/Activity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
