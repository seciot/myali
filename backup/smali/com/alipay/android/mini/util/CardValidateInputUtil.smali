.class public Lcom/alipay/android/mini/util/CardValidateInputUtil;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/alipay/android/mini/widget/CustomEditText;

.field private g:Lcom/alipay/android/mini/event/OnElementEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/mini/widget/CustomEditText;Lcom/alipay/android/mini/event/OnElementEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->f:Lcom/alipay/android/mini/widget/CustomEditText;

    iput-object p3, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->g:Lcom/alipay/android/mini/event/OnElementEventListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Lcom/alipay/android/mini/widget/YearMonthPickerDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a:Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/mini/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/util/CardValidateInputUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Lcom/alipay/android/mini/widget/CustomEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->f:Lcom/alipay/android/mini/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/mini/util/CardValidateInputUtil;)Lcom/alipay/android/mini/event/OnElementEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->g:Lcom/alipay/android/mini/event/OnElementEventListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    const-string/jumbo v1, "\u6709\u6548\u671f"

    iget-object v2, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a:Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a:Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    new-instance v1, Lcom/alipay/android/mini/util/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/util/a;-><init>(Lcom/alipay/android/mini/util/CardValidateInputUtil;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a:Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    new-instance v1, Lcom/alipay/android/mini/util/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/util/b;-><init>(Lcom/alipay/android/mini/util/CardValidateInputUtil;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a:Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;->a()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a:Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;->b()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->a:Lcom/alipay/android/mini/widget/YearMonthPickerDialog;

    iget-object v1, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/widget/YearMonthPickerDialog;->a(II)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/util/CardValidateInputUtil;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
