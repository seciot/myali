.class public Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:I

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private f:Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->f:Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->f:Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->d:Z

    return-void
.end method

.method public final a(Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->f:Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->b()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->w:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->v:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->u:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->t:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/alipay/mobile/mobilerechargeapp/R$string;->k:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget v2, v2, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_5

    if-nez p1, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/a;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, ""

    goto :goto_1

    :cond_3
    add-int/lit8 v2, p1, 0x1

    if-ne v4, v2, :cond_4

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/b;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;->h:Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    iget-object v3, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/data/SearchMatchRule;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/c;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/c;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    iget-object v1, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/e;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/mobilerechargeapp/data/SearchMatchRule;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/d;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/d;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/AutoComlieteListAdapter;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method
