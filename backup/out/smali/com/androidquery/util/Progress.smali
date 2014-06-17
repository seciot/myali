.class public Lcom/androidquery/util/Progress;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/app/Activity;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/androidquery/util/Progress;->d:Landroid/view/View;

    goto :goto_0
.end method

.method private dismiss(Ljava/lang/String;)V
    .locals 4

    const v3, 0x40ff0001

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/androidquery/util/Progress;->d:Landroid/view/View;

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 5

    const/4 v1, 0x0

    const v4, 0x40ff0001

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    instance-of v2, p1, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_6

    check-cast p1, Landroid/widget/ProgressBar;

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, v4, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroid/app/Dialog;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/app/Dialog;

    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_4

    invoke-virtual {v0, p1}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_1

    :cond_6
    move-object p1, v1

    goto :goto_0
.end method


# virtual methods
.method public done()V
    .locals 2

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public hide(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/androidquery/util/Progress;->dismiss(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/androidquery/util/Progress;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public increment(I)V
    .locals 4

    const/16 v2, 0x270f

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/androidquery/util/Progress;->e:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    iget-boolean v3, p0, Lcom/androidquery/util/Progress;->e:Z

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/androidquery/util/Progress;->e:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/androidquery/util/Progress;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/androidquery/util/Progress;->g:I

    :goto_2
    if-le v0, v2, :cond_2

    move v0, v2

    :cond_2
    iget-object v1, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setProgress(I)V

    :cond_3
    return-void

    :cond_4
    move v0, p1

    goto :goto_0

    :cond_5
    move v1, p1

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/androidquery/util/Progress;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/androidquery/util/Progress;->g:I

    iget v0, p0, Lcom/androidquery/util/Progress;->g:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/androidquery/util/Progress;->f:I

    div-int/2addr v0, v1

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    const/16 v2, 0x2710

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    :cond_2
    iput-boolean v1, p0, Lcom/androidquery/util/Progress;->e:Z

    iput v1, p0, Lcom/androidquery/util/Progress;->g:I

    iput v2, p0, Lcom/androidquery/util/Progress;->f:I

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/androidquery/util/Progress;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/androidquery/util/Progress;->dismiss(Ljava/lang/String;)V

    return-void
.end method

.method public setBytes(I)V
    .locals 2

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/util/Progress;->e:Z

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lcom/androidquery/util/Progress;->f:I

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_2
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 5

    const v4, 0x40ff0001

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/androidquery/util/Progress;->reset()V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androidquery/AQuery;

    iget-object v1, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/androidquery/util/Progress;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->c:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4, p1}, Landroid/widget/ProgressBar;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/androidquery/util/Progress;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/androidquery/util/Progress;->d:Landroid/view/View;

    invoke-virtual {v0, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/androidquery/util/Progress;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
