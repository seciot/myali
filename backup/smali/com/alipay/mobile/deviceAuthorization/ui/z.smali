.class final Lcom/alipay/mobile/deviceAuthorization/ui/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/z;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/z;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->cancel(Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/z;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    iget-object v0, v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->finish()V

    return-void
.end method
