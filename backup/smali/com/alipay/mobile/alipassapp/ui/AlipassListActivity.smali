.class public abstract Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/alipassapp/ui/common/p;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field protected b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field protected c:Lcom/alipay/mobile/alipassapp/ui/bb;

.field protected d:Lcom/alipay/mobile/commonui/widget/APListView;

.field protected e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:Landroid/content/DialogInterface$OnCancelListener;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Lcom/alipay/mobile/alipassapp/ui/common/k;

.field private k:Lcom/alipay/mobile/alipassapp/biz/common/d;

.field private l:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private m:J

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/mobile/commonui/widget/APLinearLayout;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->l:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ah;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/ah;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/mobile/alipassapp/biz/bean/CmsObject;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/common/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/az;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/az;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ad;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/alipassapp/ui/ad;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static a(Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "entry"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "80000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->g:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k:Lcom/alipay/mobile/alipassapp/biz/common/d;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;Z)Lcom/alipay/mobile/alipassapp/biz/model/a;

    move-result-object v0

    iput-boolean v4, v0, Lcom/alipay/mobile/alipassapp/biz/model/a;->c:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k:Lcom/alipay/mobile/alipassapp/biz/common/d;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/d;->a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/biz/model/a;

    invoke-direct {v2, v1, v3}, Lcom/alipay/mobile/alipassapp/biz/model/a;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ax;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/ax;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/biz/common/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k:Lcom/alipay/mobile/alipassapp/biz/common/d;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->q()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/alipassapp/ui/common/k;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j:Lcom/alipay/mobile/alipassapp/ui/common/k;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->l:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 18

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->m:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->m:J

    sub-long v14, v1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5361\u5238\u5217\u8868VoucherCurrentListActivity\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "perf_open_voucher"

    const/4 v10, 0x0

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v16

    const/4 v14, 0x3

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/alipay/mobile/alipassapp/ui/TravelCurrentListActivity;

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->m:J

    sub-long v14, v1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u65c5\u884c\u5217\u8868TravelCurrentListActivity\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "perf_open_travel"

    const/4 v10, 0x0

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v16

    const/4 v14, 0x3

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->m:J

    sub-long v14, v1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4f1a\u5458\u5361\u5217\u8868MemberCardCurrentListActivity\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "perf_open_membercard"

    const/4 v10, 0x0

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v16

    const/4 v14, 0x3

    const-string/jumbo v15, ""

    aput-object v15, v13, v14

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic l(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->r()V

    return-void
.end method

.method static synthetic m(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic o()V
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "action"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/service/g;->a(Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic p(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic p()V
    .locals 6

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000021"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "myTravelList"

    const-string/jumbo v5, "cms"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/av;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/av;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->l()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final a(I)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/au;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/au;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    if-eqz v1, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;

    invoke-direct {v4, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;

    const-string/jumbo v1, "p"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "cache_version"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassCacheVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pass_is_cacheable"

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "b"

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "pass_is_offline"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getItemFrom()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "is_invalid"

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "pid"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPartnerID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getItemFrom()I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "pass_offline_data"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPartnerID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v1, v4, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ag;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/ag;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/af;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/af;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/alipay/mobile/alipassapp/biz/model/a;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-direct {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setRequestUrl(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setNeedLogin(Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->setHandlerType(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/AlipassHtmlActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "HARequest"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;)V
    .locals 14

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPassId()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getPartnerID()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    const-string/jumbo v7, ""

    instance-of v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v7, "20000062Home"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000062"

    const-string/jumbo v5, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v8, 0x1

    aput-object v6, v12, v8

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_1

    :cond_3
    instance-of v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v7, "20000062OverdueList"

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/ae;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ay;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/ay;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract b()Landroid/view/View;
.end method

.method public final b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ac;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/ac;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract i()Ljava/lang/String;
.end method

.method protected abstract j()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq;
.end method

.method protected k()V
    .locals 3

    sget v0, Lcom/alipay/mobile/alipassapp/R$layout;->main_alipass_list:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->pull_refresh_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->current_list_view:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->alipass_past_list_error_layout:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->alipass_past_list_error_tip:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bb;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->a()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/bb;-><init>(Landroid/content/Context;Lcom/alipay/mobile/commonui/widget/APListView;I)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method l()V
    .locals 0

    return-void
.end method

.method m()V
    .locals 0

    return-void
.end method

.method final n()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/al;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/al;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const-string/jumbo v0, "p"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pass_offline_data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->r()V

    const-string/jumbo v0, "isNeedRefresh"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k:Lcom/alipay/mobile/alipassapp/biz/common/d;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/d;->c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/model/a;

    invoke-direct {v1, v0, v3}, Lcom/alipay/mobile/alipassapp/biz/model/a;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b(Lcom/alipay/mobile/alipassapp/biz/model/a;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    aget-object v2, v1, v4

    aget-object v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/aa;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/aa;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->m:J

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k()V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/k;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_viewgroup:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, p0, v0, v2, p0}, Lcom/alipay/mobile/alipassapp/ui/common/k;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/ui/common/p;)V

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->j:Lcom/alipay/mobile/alipassapp/ui/common/k;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/common/d;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/alipassapp/biz/common/d;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->k:Lcom/alipay/mobile/alipassapp/biz/common/d;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/z;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/z;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->g:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/an;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/an;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->d:Lcom/alipay/mobile/commonui/widget/APListView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ao;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/ao;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->b:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/aq;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/aq;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/as;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/as;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/bb;->a(Lcom/alipay/mobile/alipassapp/ui/bc;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->q()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ab;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/ab;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->c()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassListActivity;->c:Lcom/alipay/mobile/alipassapp/ui/bb;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/bb;->notifyDataSetChanged()V

    return-void
.end method
