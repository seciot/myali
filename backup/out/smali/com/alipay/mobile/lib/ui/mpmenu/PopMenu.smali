.class public Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;
.super Ljava/lang/Object;
.source "PopMenu.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/PopupWindow;

.field private e:Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$OnMenuItemClikListener;

.field private f:I

.field private g:I

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->f:I

    .line 38
    iput v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->g:I

    .line 67
    new-instance v0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$1;-><init>(Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->h:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    .line 47
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 48
    array-length v0, p2

    new-array v0, v0, [Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    iput-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    .line 50
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 51
    new-instance v1, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    invoke-direct {v1}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;-><init>()V

    .line 52
    aget v2, p2, v0

    iput v2, v1, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;->mItemId:I

    .line 53
    aget v2, p2, v0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;->mLabel:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    aput-object v1, v2, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->f:I

    .line 38
    iput v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->g:I

    .line 67
    new-instance v0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$1;-><init>(Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->h:Landroid/view/View$OnClickListener;

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a()V

    .line 65
    return-void
.end method

.method private static a(Landroid/content/Context;)F
    .locals 2
    .parameter

    .prologue
    .line 24
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 25
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 27
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$layout;->message_menu:I

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->c:Landroid/widget/FrameLayout;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->c:Landroid/widget/FrameLayout;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->pub_sub_menu_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    array-length v1, v1

    new-array v5, v1, [Landroid/view/View;

    move v2, v3

    move v4, v3

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    array-length v1, v1

    if-ge v2, v1, :cond_6

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v6, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_message_del_item:I

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 125
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    iget-object v7, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 128
    sget v7, Lcom/alipay/mobile/publicsvc/common/R$drawable;->pub_menu_item_full_selector:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    :goto_1
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->getItem(I)Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    move-result-object v7

    .line 139
    if-eqz v7, :cond_2

    .line 140
    iget-object v8, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_0

    .line 141
    sget v8, Lcom/alipay/mobile/publicsvc/common/R$id;->pub_menu_item_devider:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 142
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_0
    iget-object v7, v7, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget v7, Lcom/alipay/mobile/publicsvc/common/R$id;->position_tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 146
    iget-object v7, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const/high16 v7, -0x8000

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->measure(II)V

    .line 148
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 149
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 151
    :cond_1
    aput-object v6, v5, v2

    .line 122
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 130
    :cond_3
    if-nez v2, :cond_4

    .line 131
    sget v7, Lcom/alipay/mobile/publicsvc/common/R$drawable;->pub_menu_item_top_selector:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_5

    .line 133
    sget v7, Lcom/alipay/mobile/publicsvc/common/R$drawable;->pub_menu_item_bottom_selector:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 135
    :cond_5
    sget v7, Lcom/alipay/mobile/publicsvc/common/R$drawable;->pub_menu_item_middle_selector:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    move v2, v3

    .line 155
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    array-length v1, v1

    if-ge v2, v1, :cond_7

    .line 156
    aget-object v6, v5, v2

    .line 158
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item_container:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 160
    iget-object v7, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a(Landroid/content/Context;)F

    move-result v7

    .line 161
    const/high16 v8, 0x41a8

    iget-object v9, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a(Landroid/content/Context;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 162
    const/high16 v9, 0x4234

    mul-float/2addr v7, v9

    float-to-int v7, v7

    .line 163
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x2

    invoke-direct {v9, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 171
    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;)[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;)Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$OnMenuItemClikListener;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->e:Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$OnMenuItemClikListener;

    return-object v0
.end method


# virtual methods
.method public defaultShow(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 84
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->d:Landroid/widget/PopupWindow;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->d:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 98
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->g:I

    return v0
.end method

.method public getItem(I)Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->b:[Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$PopItem;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->f:I

    return v0
.end method

.method public setMenuItemClickListener(Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$OnMenuItemClikListener;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu;->e:Lcom/alipay/mobile/lib/ui/mpmenu/PopMenu$OnMenuItemClikListener;

    .line 42
    return-void
.end method
