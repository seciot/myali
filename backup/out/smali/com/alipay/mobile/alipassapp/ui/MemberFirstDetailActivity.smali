.class public Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/os/Handler;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private h:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private i:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private j:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

.field private l:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

.field private m:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private n:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private o:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;)Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;)V
    .locals 10

    const/4 v3, 0x0

    const/16 v9, 0x8

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getSecond()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->o:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$layout;->member_first_detail_item:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->member_first_second_lable:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->layout_first_second_list:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Second;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/alipassapp/R$layout;->member_first_detail_text_list_item:I

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->member_second_text:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v4

    goto :goto_2

    :cond_6
    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->member_first_second_divide:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v2, "barcode"

    aput-object v2, v3, v1

    const-string/jumbo v2, "qrcode"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string/jumbo v4, "wave"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "text"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    invoke-static {v5, p0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$layout;->member_first_detail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->c:Landroid/content/Context;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tb_member_first_titlebar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_first_first:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_first_second:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_first_opt:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_first_altText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->iv_member_first_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_member_first_lable:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_member_first_value:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_member_first_code:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_member_first_altText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->l:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tv_member_first_rootText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->tx_member_first_remark:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->o:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "more"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->n:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getFirst()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getOperation()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getOperation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getOperation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1
    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$color;->membercard_layout_first:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_5
    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :cond_6
    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/androidquery/AQuery;

    invoke-direct {v1, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v5}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    check-cast v1, Lcom/androidquery/AQuery;

    invoke-virtual {v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$First;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v2}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;ZZ)Lcom/androidquery/AbstractAQuery;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->h:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$More;->getOperation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->l:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessageEncoding()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "text"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$color;->membercard_layout_first_alttext:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->l:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$drawable;->detail_textcode_repeat:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->l:Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getAltText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/alipassapp/ui/widget/AutoScaleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "barcode"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->member_image_barcode:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {v5}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/fd;

    invoke-direct {v2, p0, v5, v0, v6}, Lcom/alipay/mobile/alipassapp/ui/fd;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "qrcode"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/alipassapp/R$layout;->member_image_qrcode:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v1, "utf-8"

    :cond_b
    invoke-static {v5}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/ff;

    invoke-direct {v3, p0, v5, v1, v0}, Lcom/alipay/mobile/alipassapp/ui/ff;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v0, "wave"

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->member_image_wave:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/alipassapp/R$drawable;->wave_btn:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "waveMsg = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v8, :cond_d

    move v1, v2

    :goto_3
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->m:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, "\u70b9\u51fb\u6309\u94ae\u540e\u9760\u8fd1\u5546\u6237\u611f\u5e94\u533a,\u4f7f\u7528\u7279\u6743"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->k:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->c:Landroid/content/Context;

    const-string/jumbo v3, "wave"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/alipassapp/ui/common/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/alipassapp/ui/MemberFirstDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    if-le v1, v8, :cond_e

    const/16 v2, 0x20

    if-gt v1, v2, :cond_e

    :try_start_1
    const-string/jumbo v1, "^[a-f1-9A-F][a-f0-9A-F]{15,31}$"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_3

    :cond_e
    move v1, v3

    goto :goto_3
.end method
