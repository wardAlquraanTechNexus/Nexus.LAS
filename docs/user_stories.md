# User Stories

## new user,  
I want to **register with my email and password**,  
So that I can **access the platform with permissions matching my role** (LD Staff/Management).  

### **Acceptance Criteria**
- [ ] **Email Validation**:  
  - Reject invalid formats (e.g., `user@`, `user@.com`).  
  - Show error: "Please enter a valid email address."  
- [ ] **Password Rules**:  
  - Accept 6-25 characters (any combo).  
  - Show error: "Password must be 6-25 characters."  
- [ ] **Role Assignment**:  
  - Automatically assign:  
    - **General** role for all registered users.  
- [ ] **Success Flow**:  
  - Redirect to `/dashboard` after registration.  
  - Show toast: "Account created! Check your email for verification."  