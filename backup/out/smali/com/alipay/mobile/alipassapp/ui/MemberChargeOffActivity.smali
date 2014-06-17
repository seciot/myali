.class public Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/os/Handler;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Z

.field private final e:I

.field private f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

.field private g:Lcom/alipay/mobile/alipassapp/ui/common/au;

.field private h:Landroid/view/View;

.field private i:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

.field private j:Landroid/os/Handler;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->d:Z

    const/16 v0, 0x7d1

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->e:I

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ex;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/ex;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/fc;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/fc;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;Lcom/alipay/mobile/alipassapp/ui/common/au;)Lcom/alipay/mobile/alipassapp/ui/common/au;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->g:Lcom/alipay/mobile/alipassapp/ui/common/au;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/alipassapp/ui/common/au;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->g:Lcom/alipay/mobile/alipassapp/ui/common/au;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->i:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->d:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v3, 0x2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->c:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->j:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->init(Landroid/content/Context;Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->i:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->i:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v0, "operation"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    const-string/jumbo v3, "passId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessageEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v7, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->setPassId(Ljava/lang/String;)V

    const-string/jumbo v7, "barcode"

    invoke-static {v4, v7}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_member_operation_barcode:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->setContentView(I)V

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->member_barcode_altText:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_0
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->member_barcode:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-static {v5}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/ey;

    invoke-direct {v2, p0, v5, v0, v6}, Lcom/alipay/mobile/alipassapp/ui/ey;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "qrcode"

    invoke-static {v4, v6}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_member_operation_qrcode:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->setContentView(I)V

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->member_qrcode_altText:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_2
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->member_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "utf-8"

    :goto_3
    invoke-static {v5}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/fa;

    invoke-direct {v3, p0, v5, v1, v0}, Lcom/alipay/mobile/alipassapp/ui/fa;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "wave"

    invoke-static {v4, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "waveMsg = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    if-gt v2, v9, :cond_9

    move v0, v1

    :cond_6
    :goto_4
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->d:Z

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "is_verify"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "wave_code"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000030"

    const-string/jumbo v3, "20000045"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_5
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->d:Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->k:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->k:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    if-le v2, v9, :cond_6

    const/16 v1, 0x20

    if-gt v2, v1, :cond_6

    :try_start_3
    const-string/jumbo v0, "^[a-f1-9A-F][a-f0-9A-F]{15,31}$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :cond_a
    const-string/jumbo v2, "dqrcode"

    invoke-static {v4, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$layout;->sub_member_operation_qrcode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->h:Landroid/view/View;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->h:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->startGetDynamicCode(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessageEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->update(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "dwave"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "is_verify"

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "is_dynamic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "passid"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000062"

    const-string/jumbo v3, "20000045"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_6
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->finish()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_6

    :cond_c
    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4e0d\u80fd\u8bc6\u522b\u7684\u6838\u9500\u65b9\u5f0f format="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->finish()V

    goto/16 :goto_1

    :cond_d
    move-object v1, v2

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->i:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;->closePayBridge()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onPause()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberChargeOffActivity;->f:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onResume()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void
.end method
