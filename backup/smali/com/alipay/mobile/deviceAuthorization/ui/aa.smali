.class final Lcom/alipay/mobile/deviceAuthorization/ui/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aa;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/aa;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    iget-object v0, v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->k(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
