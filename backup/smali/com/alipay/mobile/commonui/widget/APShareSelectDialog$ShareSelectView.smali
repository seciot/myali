.class public Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

.field mContext:Landroid/content/Context;

.field mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->layout_share_select:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->grid_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->init(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_weibo:I

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_laiwang:I

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_laiwang_timeline:I

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_sms:I

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_linkcopy:I

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_weixin:I

    goto :goto_0

    :sswitch_6
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->share_logo_weixin_timeline:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x10 -> :sswitch_0
        0x100 -> :sswitch_5
        0x1000 -> :sswitch_6
        0x10000 -> :sswitch_4
        0x100000 -> :sswitch_1
        0x1000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic access$400(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_weibo:I

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_laiwang:I

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_laiwang_timeline:I

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_sms:I

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_linkcopy:I

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_weixin:I

    goto :goto_0

    :sswitch_6
    sget v0, Lcom/alipay/mobile/ui/R$string;->share_name_weixin_timeline:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x10 -> :sswitch_0
        0x100 -> :sswitch_5
        0x1000 -> :sswitch_6
        0x10000 -> :sswitch_4
        0x100000 -> :sswitch_1
        0x1000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public init(I)V
    .locals 5

    const/high16 v4, 0x100

    const/high16 v3, 0x10

    const/high16 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int v0, p1, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int v0, p1, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int v0, p1, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$2;-><init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnShareSelectListener(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    return-void
.end method
