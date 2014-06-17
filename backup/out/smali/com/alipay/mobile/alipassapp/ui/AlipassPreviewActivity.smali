.class public Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/net/Uri;

.field private e:Lcom/alipay/mobile/alipassapp/biz/common/a;

.field private f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

.field private g:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

.field private h:Z

.field private i:Z

.field private j:Lcom/alipay/mobile/alipassapp/biz/a;

.field private k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private l:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private n:Lcom/alipay/mobile/alipassapp/biz/a/a;

.field private final o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->h:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->i:Z

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->l:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/be;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/be;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)Lcom/alipay/mobile/alipassapp/biz/common/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->e:Lcom/alipay/mobile/alipassapp/biz/common/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x66

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->e:Lcom/alipay/mobile/alipassapp/biz/common/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/common/a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassPath(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/common/aq;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getChildType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TRAVEL"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setBizType(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPartnerId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setSerialNumber(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassBaseInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->n:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/16 v0, 0x64

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :cond_0
    const-string/jumbo v1, "COUPON"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setBizType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x66

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->dismissProgressDialog()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/aq;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->dismissProgressDialog()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setShareSuport(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->setRemindSupport(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_voucher:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g:Lcom/alipay/mobile/alipassapp/viewcontrol/a;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, p0, v1, v2}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;)V

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->dismissProgressDialog()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unsport:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/common/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/biz/common/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->e:Lcom/alipay/mobile/alipassapp/biz/common/a;

    const-string/jumbo v1, "sourceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".alipass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->d:Landroid/net/Uri;

    const-string/jumbo v1, "entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "files"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->i:Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->c()V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bf;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bf;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->l:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    return-void
.end method

.method a(ILjava/lang/String;)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->h:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "://platformapi/addalipass?status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&statusMemo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "&serialNumber="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->finish()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->finish()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->finish()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/service/g;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method a(Z)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bh;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/alipassapp/ui/bh;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/bh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->dismissProgressDialog()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$string;->alipass_unzip_voucher_fail:I

    invoke-static {p0, v0, v3}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method c()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->e:Lcom/alipay/mobile/alipassapp/biz/common/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->e:Lcom/alipay/mobile/alipassapp/biz/common/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->d:Landroid/net/Uri;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->i:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/alipassapp/biz/common/a;->a(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(Z)V

    goto :goto_0
.end method

.method d()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/16 v3, 0x66

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->j:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-interface {v1}, Lcom/alipay/mobile/alipassapp/biz/a;->a()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    const/16 v0, 0x66

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$string;->alipass_add_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method e()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v0, "\u6dfb\u52a0\u4e2d"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->e:Lcom/alipay/mobile/alipassapp/biz/common/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->dismissProgressDialog()V

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->h:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->finish()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->j:Lcom/alipay/mobile/alipassapp/biz/a;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/a;->b(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bg;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bg;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->dismissProgressDialog()V

    iput-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->h:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->finish()V

    throw v0

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->h:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->main_alipass_detail:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->details_pull_refresh_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->l:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->l:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/bd;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/bd;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->alipass_detail_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->l:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->m:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->setContentView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->alipass_preview_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->j:Lcom/alipay/mobile/alipassapp/biz/a;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->n:Lcom/alipay/mobile/alipassapp/biz/a/a;

    const-string/jumbo v0, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->showProgressDialog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->n:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->n:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "09999987"

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->f()V

    return-void
.end method
