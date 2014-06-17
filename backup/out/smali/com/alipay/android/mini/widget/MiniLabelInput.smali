.class public Lcom/alipay/android/mini/widget/MiniLabelInput;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/alipay/android/mini/widget/CustomEditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$layout;->C:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/alipay/android/app/R$styleable;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->g:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->h:Z

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->onFinishInflate()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->removeIcon()V

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->f:Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/mini/widget/MiniLabelInput;)Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$drawable;->y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v2, Lcom/alipay/android/mini/widget/h;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/widget/h;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/android/mini/widget/MiniLabelInput;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a()V

    return-void
.end method


# virtual methods
.method public addTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public clearDefaultIcon()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public getInputText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputView()Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public initIconListener()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/CustomEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$drawable;->y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v2, Lcom/alipay/android/mini/widget/g;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/widget/g;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/mini/widget/CustomEditText;->initOnIconClickListener(Landroid/graphics/drawable/Drawable;Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->f:Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;

    sget v0, Lcom/alipay/android/app/R$id;->ad:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/android/app/R$id;->af:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    sget v0, Lcom/alipay/android/app/R$id;->ae:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/widget/CustomEditText;

    iput-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    :cond_3
    iget v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->i:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/mini/widget/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/widget/d;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/widget/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/widget/e;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    new-instance v1, Lcom/alipay/android/mini/widget/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/widget/f;-><init>(Lcom/alipay/android/mini/widget/MiniLabelInput;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setInputDisable()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    return-void
.end method

.method public setInputEnable()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setEnabled(Z)V

    return-void
.end method

.method public setInputHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputLength(I)V
    .locals 4

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->b:Lcom/alipay/android/mini/widget/CustomEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/android/mini/widget/CustomEditText;->setInputType(I)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnIconClickListener(Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/widget/MiniLabelInput;->f:Lcom/alipay/android/mini/widget/CustomEditText$OnIconClickListener;

    invoke-direct {p0}, Lcom/alipay/android/mini/widget/MiniLabelInput;->a()V

    return-void
.end method
