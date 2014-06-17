.class final Lcom/alipay/mobile/deviceAuthorization/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->cancel(Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;

    iget-object v0, v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->finish()V

    return-void
.end method
