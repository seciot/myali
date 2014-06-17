.class final Lcom/alipay/android/mini/widget/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/YearMonthPicker;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-wide/16 v3, 0x64

    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    #getter for: Lcom/alipay/android/mini/widget/YearMonthPicker;->b:Z
    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->access$200(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    #getter for: Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Z
    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->access$000(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->incrementYear()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    #getter for: Lcom/alipay/android/mini/widget/YearMonthPicker;->e:Z
    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->access$100(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->incrementMonth()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/mini/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/widget/p;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/widget/p;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    #getter for: Lcom/alipay/android/mini/widget/YearMonthPicker;->c:Z
    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->access$300(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    #getter for: Lcom/alipay/android/mini/widget/YearMonthPicker;->d:Z
    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->access$000(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->decrementYear()V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    #getter for: Lcom/alipay/android/mini/widget/YearMonthPicker;->e:Z
    invoke-static {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->access$100(Lcom/alipay/android/mini/widget/YearMonthPicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/YearMonthPicker;->decrementMonth()V

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    iget-object v0, v0, Lcom/alipay/android/mini/widget/YearMonthPicker;->rptUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/widget/p;

    iget-object v2, p0, Lcom/alipay/android/mini/widget/p;->a:Lcom/alipay/android/mini/widget/YearMonthPicker;

    invoke-direct {v1, v2}, Lcom/alipay/android/mini/widget/p;-><init>(Lcom/alipay/android/mini/widget/YearMonthPicker;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
