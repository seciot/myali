.class public Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;
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
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:J

.field private F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

.field private G:Lcom/alipay/mobile/alipassapp/ui/common/au;

.field private H:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

.field private I:Landroid/os/Handler;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Landroid/view/View$OnClickListener;

.field private L:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View;

.field private f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

.field private g:Lcom/alipay/mobile/alipassapp/ui/common/k;

.field private h:Lcom/alipay/mobile/alipassapp/biz/a;

.field private i:Lcom/alipay/mobile/alipassapp/biz/a/a;

.field private j:Z

.field private k:Z

.field private l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

.field private m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private n:Ljava/lang/String;

.field private o:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

.field private p:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private q:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private r:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private t:Lcom/alipay/mobile/commonui/widget/APButton;

.field private u:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private v:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private w:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private x:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

.field private y:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private z:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d:Ljava/lang/String;

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b:Z

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->k:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->C:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->D:Z

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/dp;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/dp;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->I:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/dr;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/dr;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->J:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/dt;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/dt;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->K:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/du;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/du;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->L:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/ui/common/au;)Lcom/alipay/mobile/alipassapp/ui/common/au;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->G:Lcom/alipay/mobile/alipassapp/ui/common/au;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/commonui/widget/APPopupWindow;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->x:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    return-object p1
.end method

.method private a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "more"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a()Lcom/alipay/mobile/alipassapp/ui/common/an;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/an;->a(Landroid/content/Intent;Lcom/alipay/mobile/framework/app/MicroApplication;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-interface {p1}, Ljava/util/List;->size()I

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tel"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "map"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    new-instance v3, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Lcom/alipay/mobile/commonui/widget/APTableView;->setStyle(I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getEndDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getEndDate()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/common/utils/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "yyyy-MM-dd"

    invoke-static {v5, v6}, Lcom/alipay/mobile/alipassapp/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/alipassapp/a/a;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v4

    if-ltz v4, :cond_1

    if-nez v4, :cond_6

    const-string/jumbo v4, "\u5f53\u5929\u8fc7\u671f"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/alipassapp/R$color;->membercard_tableView_value:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lcom/alipay/mobile/commonui/widget/APTableView;->setAdjustRightTextAfterDraw(Z)V

    const-string/jumbo v4, "tel"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/common/a;

    const-string/jumbo v5, "tel"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v4, p0, v5, v0, v6}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/alipassapp/R$drawable;->member_card_detail_tel:I

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    if-lez v4, :cond_4

    const/4 v5, 0x7

    if-gt v4, v5, :cond_4

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5929\u8fc7\u671f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/alipassapp/R$color;->membercard_tableView_value:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_7
    const-string/jumbo v4, "map"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/common/a;

    const-string/jumbo v5, "map"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v4, p0, v5, v0, v6}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_8
    const-string/jumbo v4, "url"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/common/a;

    const-string/jumbo v5, "url"

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getLabel()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v4, p0, v5, v0, v6}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setClickable(Z)V

    goto/16 :goto_3

    :cond_a
    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/dq;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/alipassapp/ui/dq;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_b
    :goto_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_f

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v9, :cond_e

    if-nez v1, :cond_c

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_c
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_d

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    goto :goto_5

    :cond_d
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APTableView;->setType(I)V

    goto :goto_5

    :cond_f
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getPageType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "more"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;-><init>(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V

    iget-object v3, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v4, "1903"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v4, "1905"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPrimaryFields()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPrimaryFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->D:Z

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPrimaryFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v2, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v3, "1501"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v3, "1502"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v3, "1509"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->w:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$EinfoFields;->getMore()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private c()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "b"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v1, "b"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->B:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_invalid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_4
    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->C:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "need_city"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v5, "primary_prields"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    const-string/jumbo v5, "1905"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v3, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    invoke-direct {v3}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;-><init>()V

    new-instance v4, Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    invoke-direct {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;-><init>()V

    invoke-virtual {v3, v4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->setPassInfo(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->setPrimaryFields(Ljava/lang/String;)V

    iput-object v0, v3, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    :goto_7
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->i:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->A:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->B:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-boolean v0, v3, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    move v2, v4

    :cond_1
    iput-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_7

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u67e5\u8be2\u8be6\u60c5DAO\u5f02\u5e38passId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    move v2, v4

    goto :goto_7

    :cond_3
    move-object v1, v3

    goto :goto_6

    :cond_4
    move-object v0, v3

    goto :goto_5

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move-object v0, v1

    goto/16 :goto_3

    :cond_7
    move-object v1, v3

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_1

    :cond_9
    move-object v1, v3

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getFormat()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/ui/common/au;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->G:Lcom/alipay/mobile/alipassapp/ui/common/au;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->H:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j:Z

    return v0
.end method

.method static synthetic i(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->y:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->x:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->K:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->J:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->x:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->x:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->x:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->C:Z

    return v0
.end method

.method static synthetic t(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic v(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic w(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic x(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ec;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/ec;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ed;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/ed;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ai;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "p"

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->finish()V

    :cond_0
    return-void
.end method

.method a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    .locals 18
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->refreshFinished()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j:Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->dismissProgressDialog()V

    if-eqz p1, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;-><init>(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->setPassId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setEnablePull(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->p:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->r:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->removeAllViews()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->o:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getStrip()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getHeadFields()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->refreshUI(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "barcode"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$string;->member_card_use_explain:I

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/ea;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alipay/mobile/alipassapp/ui/ea;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation;->getMessageEncoding()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v2, v4, v1}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->update(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getLogoText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPrimaryFields()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->p:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getSecondaryFields()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getAuxiliaryFields()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->r:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getBackFields()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Ljava/util/List;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->z:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->E:J

    sub-long v14, v1, v3

    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4f1a\u5458\u5361\u8be6\u60c5MemberCardDetailActivity\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

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

    const-string/jumbo v9, "perf_open_membercarddetail"

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

    :cond_4
    const-string/jumbo v1, "qrcode"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "dqrcode"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/alipassapp/R$drawable;->bp_membercard_detail_qrcode:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v1, "wave"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "dwave"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/alipassapp/R$drawable;->bp_membercard_detail_wave:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v1, "dbarcode"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->w:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$string;->member_card_use_explain:I

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->startGetDynamicCode(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$string;->member_card_show:I

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    goto/16 :goto_2

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x1

    const-string/jumbo v0, "\u6b63\u5728\u5220\u9664"

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;->success:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->i:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_6
    move-exception v1

    goto :goto_0

    :catch_7
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method a(Z)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "\u52a0\u8f7d\u4e2d"

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->A:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v3, v4}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;ZZ)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v3, "1903"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v3, "1905"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    :goto_0
    return-void

    :cond_2
    :try_start_2
    iget-boolean v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->i:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->B:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v3, v4}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;I)V

    :cond_3
    if-eqz v1, :cond_6

    iget-boolean v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->k:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v3, "1501"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v3, "1502"

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->i:Lcom/alipay/mobile/alipassapp/biz/a/a;

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

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->A:Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_6
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    goto :goto_0

    :cond_7
    :try_start_3
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_4
    sget-object v2, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RPC\u67e5\u8be2\u5361\u5238\u8be6\u60c5\u51fa\u9519\u3002hasCacheData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->k:Z

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->g:Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/dy;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/alipassapp/ui/dy;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/commonui/widget/APTitleBar;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/dz;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/dz;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    goto/16 :goto_0

    :cond_8
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_5
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method b(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v1, 0x1

    const-string/jumbo v0, "\u6b63\u5728\u5220\u9664"

    invoke-virtual {p0, v0, v1, p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;Z)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 14

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "expired"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v7, "20000062OverdueDetails"

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000062"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v13, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v13}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    const/4 v8, 0x1

    iget-object v13, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->l:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    invoke-virtual {v13}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getPassBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    move-object v8, p1

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v7, "20000062Details"

    goto :goto_0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->E:J

    sput-boolean v2, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a:Z

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b:Z

    sput-boolean v2, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c:Z

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->main_member_card_detail:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->e:Landroid/view/View;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->member_details_pull_refresh:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/dv;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/alipassapp/ui/dv;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->setRefreshListener(Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_detail_kpqy:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->o:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->btn_use_membercard_button:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_use_membercard_button:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->u:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->iv_use_membercard_image:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->v:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_use_membercard_image_msg:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->w:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_detail_zstq:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->p:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_detail_tytq:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->q:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_detail_cardinfo:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->r:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_detail_otherinfo:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->s:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    sget v3, Lcom/alipay/mobile/alipassapp/R$id;->tv_query_xiaobao:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->z:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->z:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/dw;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/alipassapp/ui/dw;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->setContentView(Landroid/view/View;)V

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->e:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v3, p0, v0, v4, p0}, Lcom/alipay/mobile/alipassapp/ui/common/k;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/alipassapp/ui/common/p;)V

    iput-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->g:Lcom/alipay/mobile/alipassapp/ui/common/k;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->h:Lcom/alipay/mobile/alipassapp/biz/a;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v3, p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->i:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->I:Landroid/os/Handler;

    invoke-virtual {v0, p0, v3, v1}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->init(Landroid/content/Context;Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->H:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->H:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    :cond_0
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->member_titlebar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->member_for_location:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->y:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v3, Lcom/alipay/mobile/alipassapp/R$drawable;->more_title_bar_icon_list:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/dx;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/alipassapp/ui/dx;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->k:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->H:Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassPayBridgeService;->closePayBridge()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->i:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v0}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onPause()V

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->F:Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;

    invoke-virtual {v0}, Lcom/alipay/mobile/discoverycommon/api/service/CreateDynamicCodeService;->onResume()V

    sget-boolean v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b:Z

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b:Z

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Z)V

    sput-boolean v1, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a:Z

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->D:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->finish()V

    goto :goto_0
.end method
