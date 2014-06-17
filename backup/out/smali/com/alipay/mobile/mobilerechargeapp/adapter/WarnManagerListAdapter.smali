.class public Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Landroid/content/Context;

.field private f:Landroid/view/LayoutInflater;

.field private g:Ljava/util/ArrayList;

.field private h:Z

.field private i:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a:I

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->b:I

    iput v2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->c:I

    iput v3, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->d:I

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->h:Z

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->j:I

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->k:I

    iput v2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->l:I

    iput v3, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->m:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->n:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->o:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->p:I

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->f:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->i:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    return-object v0
.end method

.method private a(ILcom/alipay/mobile/mobilerechargeapp/adapter/j;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/i;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/i;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_normal_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_top_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_center_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->table_bottom_selector:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;I)V
    .locals 5

    const/16 v1, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    if-nez p3, :cond_4

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    iget v0, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-boolean v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->h:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_3
    invoke-static {p1, v4}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->t:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setRightText(Ljava/lang/String;)V

    if-ne p3, v3, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    invoke-static {p1, v3}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p1, v3}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    if-ne v5, p3, :cond_2

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    iget v0, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    if-ne v0, v4, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-static {p1, v3}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$string;->t:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setRightText(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v6, :cond_6

    if-nez p4, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-boolean v0, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->g:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->h:Z

    if-eqz v0, :cond_4

    invoke-static {p1, v3}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1, v4}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p1, v5}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->h:Z

    if-eqz v0, :cond_7

    invoke-static {p1, v5}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p1, v6}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->i:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

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
    .locals 9

    const/4 v2, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->n:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->J:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_left_text_2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->n:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v5, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v6, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v6, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ne v5, p1, :cond_0

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-boolean v6, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->f:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->e:Z

    if-eqz v6, :cond_4

    move v2, v3

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ne v5, p1, :cond_2

    iget-boolean v5, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->h:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->g:Z

    if-eqz v5, :cond_2

    const/4 v2, 0x6

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getItemType ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    packed-switch v2, :pswitch_data_0

    :goto_2
    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;)V

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget v6, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    if-eqz v6, :cond_1

    move v2, v4

    goto :goto_1

    :cond_5
    iget-boolean v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->e:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    goto :goto_1

    :cond_6
    iget v2, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->d:I

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    goto :goto_1

    :cond_7
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;I)V

    invoke-direct {p0, p1, v1, p2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(ILcom/alipay/mobile/mobilerechargeapp/adapter/j;Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/f;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;I)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;II)V

    invoke-direct {p0, p1, v1, p2}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(ILcom/alipay/mobile/mobilerechargeapp/adapter/j;Landroid/view/View;)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;II)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/g;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/g;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;I)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;II)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :pswitch_6
    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v2, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    if-ne v0, v4, :cond_9

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_3
    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/mobilerechargeapp/R$string;->r:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1, v3}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/j;I)V

    :cond_8
    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/h;-><init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/j;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
