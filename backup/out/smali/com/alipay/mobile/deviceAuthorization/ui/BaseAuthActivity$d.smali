.class final Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

.field private b:Z

.field private c:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->b:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->c:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->c:Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;->b:Z

    return-void
.end method
