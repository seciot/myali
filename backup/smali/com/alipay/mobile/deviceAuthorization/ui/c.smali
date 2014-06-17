.class final Lcom/alipay/mobile/deviceAuthorization/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->cancel(Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;

    iget-object v0, v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$b;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;->finish()V

    return-void
.end method
