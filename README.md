# 🔷 INNER JOIN

---

## 🟢 Task 1 — User Public Profile API

**Use-case:**
Frontend `/users/:id` endpointi uchun user va uning profil ma’lumoti kerak.

**Talab:**
Faqat profile mavjud userlar.

**Output:**

| user_id | email | full_name | bio | birth_date |

**Sort:**

* user_id ASC

---

## 🟢 Task 2 — Post Feed (Author bilan)

**Use-case:**
Home feed’da post va author email ko‘rinishi kerak.

**Talab:**
Faqat mavjud postlar.

**Output:**

| post_id | title | author_email | created_at |

**Sort:**

* created_at DESC

---

## 🟢 Task 3 — Comment Stream

**Use-case:**
Post detail sahifasida commentlar author bilan chiqishi kerak.

**Talab:**
Har bir comment uchun:

* post title
* commenter email

**Output:**

| comment_id | comment_content | post_title | commenter_email | created_at |

**Sort:**

* created_at DESC

---

# 🔷 LEFT JOIN — Soddalashtirilgan, Sof Semantika

Maqsad:
Chap jadval **to‘liq saqlanishi**, o‘ng jadval optional.

---

## 🟡 Task 4 — Users va ularning postlari (agar bo‘lsa)

**Use-case:**
Admin user detail sahifasida user va uning postlari ko‘rinadi.

**Output:**

| user_id | email | post_id | title |

**Sort:**

* user_id ASC
* post_id ASC

Semantika:

* Post yozmagan user ham chiqadi.
* Post ustunlari NULL bo‘ladi.

---

## 🟡 Task 5 — Post va commentlari (agar bo‘lsa)

**Use-case:**
Post detail sahifasida post har doim chiqadi, comment bo‘lishi shart emas.

**Output:**

| post_id | title | comment_id | comment_content |

**Sort:**

* post_id ASC
* comment_id ASC

---

## 🟡 Task 6 — Users va profile (agar bo‘lsa)

**Use-case:**
Profile to‘ldirmagan userlarni aniqlash.

**Output:**

| user_id | email | full_name |

**Sort:**

* user_id ASC

---

# 🔷 FULL OUTER JOIN

Bu yerda absurd orphan-case emas, balki real data comparison ishlatamiz.

---

## 🟣 Task 7 — User vs Profile Coverage

**Talab:**
User va profile mapping’ni to‘liq ko‘rish.

**Output:**

| user_id | email | profile_user_id | full_name |


---

## 🟣 Task 8 — Post Engagement Matrix

**Use-case:**
Post + comment relationshipni to‘liq ko‘rish.

**Output:**

| post_id | title | comment_id | comment_content |

**Sort:**

* post_id ASC

---

## 🟣 Task 9 — User Participation Overview

**Use-case:**
Community activity mapping.

**Output:**

| user_id | email | comment_id |

**Sort:**

* user_id ASC
