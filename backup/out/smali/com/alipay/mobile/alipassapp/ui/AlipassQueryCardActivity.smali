.class public Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/alipay/mobile/alipassapp/ui/common/p;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Landroid/view/View;

.field private f:Ljava/lang/Boolean;

.field private g:Lcom/alipay/mobile/alipassapp/biz/a/a;

.field private h:Lcom/alipay/mobile/alipassapp/biz/a;

.field private i:Lcom/alipay/mobile/alipassapp/ui/common/k;

.field private j:Lcom/alipay/mobile/common/rpc/RpcException;

.field private k:Lcom/alipay/mobile/commonui/widget/APScrollView;

.field private l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private m:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

.field private n:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private o:Lcom/alipay/mobile/commonui/widget/APButton;

.field private p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a:Z

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b:Z

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->j:Lcom/alipay/mobile/common/rpc/RpcException;

    return-void
.end method

.method private a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->j:Lcom/alipay/mobile/common/rpc/RpcException;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;)Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->t:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    return-object p1
.end method

.method private static a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v2, v2, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private b(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v1, 0x1f4

    const/4 v0, 0x0

    move-wide v2, v4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0xbb8

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v6, "1509"

    iget-object v7, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b()V

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->s:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f00\u5361\u6210\u529f\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->s:J

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->dismissProgressDialog()V

    if-eqz v0, :cond_4

    const-string/jumbo v1, "1509"

    iget-object v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->h()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const-string/jumbo v1, "1903"

    iget-object v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    goto :goto_0
.end method

.method private static b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "100"

    iget-object v2, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->t:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    return-object v0
.end method

.method private static c(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "1905"

    iget-object v1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPrimaryFields()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->f:Ljava/lang/Boolean;

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->f:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private j()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v3, v3, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private k()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->j:Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->j:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->i:Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/cb;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/alipassapp/ui/cb;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->j:Lcom/alipay/mobile/common/rpc/RpcException;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v3, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->j()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(J)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    :cond_3
    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(J)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->dismissProgressDialog()V

    if-eqz v0, :cond_9

    const-string/jumbo v1, "1903"

    iget-object v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "\u9886\u53d6\u4e2d"

    invoke-virtual {p0, v0, v3, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "1902"

    iget-object v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "1509"

    iget-object v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->h()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "1908"

    iget-object v2, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->f()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    goto/16 :goto_0
.end method

.method protected a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-string/jumbo v0, "\u9886\u53d6\u4e2d"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->s:J

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/a;->b(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->success:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->dismissProgressDialog()V

    if-eqz v0, :cond_2

    const-string/jumbo v1, "1912"

    iget-object v2, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bq;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/bq;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->j:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_1
    const-string/jumbo v1, "1911"

    iget-object v2, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultDesc:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    invoke-direct {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;-><init>()V

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->setUrl(Ljava/lang/String;)V

    const-string/jumbo v0, "more"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a()Lcom/alipay/mobile/alipassapp/ui/common/an;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a(Landroid/content/Intent;Lcom/alipay/mobile/framework/app/MicroApplication;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->dismissProgressDialog()V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/d;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/model/d;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->f()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->m:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->refreshUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->n:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->n:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->b()I

    move-result v4

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/d;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/commonui/widget/APTableView;->setArrowImageVisibility(I)V

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setEnabled(Z)V

    const/4 v0, 0x1

    if-le v4, v0, :cond_4

    if-nez v1, :cond_2

    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v4, -0x1

    if-ne v1, v0, :cond_3

    const/16 v0, 0x12

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x13

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/bu;

    invoke-direct {v1, p0, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/bu;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->s:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9886\u5361\u6a21\u677f\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->s:J

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method protected a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "card"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "p"

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "b"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "need_city"

    iget-object v2, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "primary_prields"

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPrimaryFields()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->finish()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "cache_version"

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "pass_is_cacheable"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bw;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bw;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V

    iget-object v1, p1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$string;->alipass_ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bx;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bx;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_open_membercard_error_msg:I

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ai;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "tid"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v2, v2, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->tid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected c()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->d()V

    const-string/jumbo v0, "\u52a0\u8f7d\u4e2d"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/a;->c(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;)Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->j:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    goto :goto_0
.end method

.method protected d()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k:Lcom/alipay/mobile/commonui/widget/APScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->setVisibility(I)V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a()V

    return-void
.end method

.method protected f()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bv;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bv;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$string;->member_card_company_no_card:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$string;->alipass_ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/by;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/by;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->member_card_open_msg:I

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ai;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    :cond_0
    return-void
.end method

.method protected h()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bz;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bz;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ca;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/ca;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ai;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->s:J

    sput-boolean v3, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a:Z

    sput-boolean v2, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c:Z

    sput-boolean v2, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b:Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->e:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/alipassapp/R$layout;->main_alipass_querycard:I

    invoke-virtual {v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->e:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->tbar_query_card:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->l:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->e:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->sview_query_card:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k:Lcom/alipay/mobile/commonui/widget/APScrollView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k:Lcom/alipay/mobile/commonui/widget/APScrollView;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->layout_card_view:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->m:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->m:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    const-string/jumbo v4, "color_transparent"

    invoke-virtual {v0, v1, v4, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->refreshUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k:Lcom/alipay/mobile/commonui/widget/APScrollView;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->layout_query_card_privilage:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->n:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k:Lcom/alipay/mobile/commonui/widget/APScrollView;

    sget v4, Lcom/alipay/mobile/alipassapp/R$id;->button_add_card:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->e:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v4, p0, v0, v5, p0}, Lcom/alipay/mobile/alipassapp/ui/common/k;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/ui/common/p;)V

    iput-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->i:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->k:Lcom/alipay/mobile/commonui/widget/APScrollView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APScrollView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->setContentView(Landroid/view/View;)V

    :cond_1
    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getSourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_2

    const-string/jumbo v0, "pid"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "cid"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    move v0, v3

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a()V

    :cond_3
    return-void

    :cond_4
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    if-nez v0, :cond_7

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    const-string/jumbo v3, "aid"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    const-string/jumbo v3, "uid"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    const-string/jumbo v3, "pid"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->partnerId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    const-string/jumbo v3, "cid"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->customerId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    const-string/jumbo v3, "ctype"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->cardType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    const-string/jumbo v3, "tid"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->tid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    const-string/jumbo v3, "channel"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->openChannel:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    const-string/jumbo v3, "ext"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->extend:Ljava/lang/String;

    const-string/jumbo v0, "b"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    const-string/jumbo v0, "m"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "MCARD"

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->q:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, v3, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->userId:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->customerId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->customerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->r:Ljava/lang/String;

    :goto_4
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->p:Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;->partnerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->r:Ljava/lang/String;

    goto :goto_4

    :cond_c
    move-object v4, v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a()V

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c:Z

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c:Z

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u9886\u53d6\u4e2d"

    invoke-virtual {p0, v0, v2, p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bt;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bt;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a:Z

    :cond_2
    sget-boolean v0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    sput-boolean v2, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b:Z

    goto :goto_0
.end method
