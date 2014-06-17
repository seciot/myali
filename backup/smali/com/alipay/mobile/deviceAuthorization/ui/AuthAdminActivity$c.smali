.class final Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

.field private b:Z

.field private c:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->b:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->c:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->c:Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/AuthAdminActivity$c;->b:Z

    return-void
.end method
