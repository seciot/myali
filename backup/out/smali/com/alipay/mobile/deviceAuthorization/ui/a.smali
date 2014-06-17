.class final Lcom/alipay/mobile/deviceAuthorization/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

.field final synthetic b:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/a;->b:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/a;->a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/a;->b:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/a;->a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;

    invoke-virtual {v3}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/info/AuthInfo;->getAuthId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
