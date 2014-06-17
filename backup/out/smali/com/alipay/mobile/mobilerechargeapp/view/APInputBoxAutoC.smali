.class public Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;


# static fields
.field public static final DARK:I = 0x11

.field private static final DEFUALT_TITLE_CHAR_NUM:I = 0x4

.field public static final NORMAL:I = 0x10


# instance fields
.field private bgGroup:I

.field private bgType:I

.field private iTextWatcher:Landroid/text/TextWatcher;

.field private isNeedShowClearButton:Z

.field private mCleanButtonListener:Landroid/view/View$OnClickListener;

.field private mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private mFouchesChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private mTextFormatter:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

.field private mValidators:Ljava/util/ArrayList;

.field private m_right_text:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->isNeedShowClearButton:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->bgGroup:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mTextFormatter:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mValidators:Ljava/util/ArrayList;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/view/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/view/a;-><init>(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->iTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->inflateLayout(Landroid/content/Context;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->F:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->m_right_text:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->defaultFontSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/4 v7, 0x0

    const/high16 v5, -0x100

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->genericInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x9

    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    const/16 v0, 0xb

    invoke-virtual {v9, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/16 v0, 0xa

    const/high16 v1, -0x100

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v0, 0x5

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v10, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/16 v0, 0x10

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->bgType:I

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->bgGroup:I

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    invoke-virtual {p0, v8}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setInputName(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setInputNameTextSize(F)V

    invoke-virtual {p0, v6}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setInputTextSize(F)V

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setInputTextColor(I)V

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setInputType(I)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setLength(I)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setHint(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setHintTextColor(I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setApprerance(Z)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->afterInflate()V

    return-void

    :cond_0
    move-object v8, v7

    move v7, v6

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mTextFormatter:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->m_right_text:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Lcom/alipay/mobile/commonui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mCleanButtonListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private addClearListener()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/view/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/view/c;-><init>(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private afterInflate()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->iTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->addClearListener()V

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->bgType:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setItemPositionStyle(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/view/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/view/b;-><init>(Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setItemPositionStyle(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setItemPositionStyle(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setItemPositionStyle(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public addValidator(Lcom/alipay/mobile/commonui/validator/APValidator;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mValidators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearValidator()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mValidators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getClearButton()Lcom/alipay/mobile/commonui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    return-object v0
.end method

.method public getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method public getInputName()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getInputedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->m_right_text:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method protected inflateLayout(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public isNeedShowClearButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->isNeedShowClearButton:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->onInputTextStatusChanged(ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mFouchesChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mFouchesChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onInputTextStatusChanged(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setClearButtonVisiable(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setClearButtonVisiable(Z)V

    goto :goto_0
.end method

.method public setApprerance(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public setCleanButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mCleanButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setClearButtonVisiable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->isNeedShowClearButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHintTextColor(I)V

    return-void
.end method

.method public setInputErrorState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$color;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$color;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setInputName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setInputName(Ljava/lang/String;I)V

    return-void
.end method

.method public setInputName(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u3000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setInputNameTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputName:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setInputTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setTextColor(I)V

    return-void
.end method

.method public setInputTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setInputType(I)V

    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 2

    const/16 v0, 0x10

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->bgGroup:I

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_top_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_center_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_bottom_normal:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->bgGroup:I

    if-ne v0, v1, :cond_0

    packed-switch p1, :pswitch_data_1

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_normal_dark:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_top_dark:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_center_dark:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->input_bottom_dark:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setLength(I)V
    .locals 4

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setNeedShowClearButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->isNeedShowClearButton:Z

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mFouchesChangeListener:Landroid/view/View$OnFocusChangeListener;

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mInputContent:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method public setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mTextFormatter:Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;

    return-void
.end method

.method public setVisualStyle(I)V
    .locals 0

    return-void
.end method

.method public validate()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->mValidators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/validator/APValidator;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/view/APInputBoxAutoC;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/commonui/validator/APValidator;->validate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
