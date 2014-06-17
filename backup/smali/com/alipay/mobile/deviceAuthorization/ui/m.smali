.class final Lcom/alipay/mobile/deviceAuthorization/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/m;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/m;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/m;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/m;->b:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->C(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
