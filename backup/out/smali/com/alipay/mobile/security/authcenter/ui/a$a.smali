.class final Lcom/alipay/mobile/security/authcenter/ui/a$a;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/authcenter/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/a;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/a$a;-><init>(Lcom/alipay/mobile/security/authcenter/ui/a;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12

    const/4 v1, 0x0

    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->a(Lcom/alipay/mobile/security/authcenter/ui/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-static {v5}, Lcom/alipay/mobile/security/authcenter/ui/a;->b(Lcom/alipay/mobile/security/authcenter/ui/a;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/alipay/mobile/security/authcenter/ui/a;->d:Ljava/util/ArrayList;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->a(Lcom/alipay/mobile/security/authcenter/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    iget-object v2, v2, Lcom/alipay/mobile/security/authcenter/ui/a;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->a(Lcom/alipay/mobile/security/authcenter/ui/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/a;->d:Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_6

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    const-string/jumbo v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v0, v1

    :goto_3
    if-ge v0, v10, :cond_3

    aget-object v11, v9, v0

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iput-object v7, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->a(Lcom/alipay/mobile/security/authcenter/ui/a;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/a$a;->a:Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/a;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
