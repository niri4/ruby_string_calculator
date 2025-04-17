# 📐 String Calculator (TDD Kata in Ruby)

This is a simple implementation of the **String Calculator Kata**, written in Ruby and developed using **Test-Driven Development (TDD)**.

## ✅ Problem Statement

Create a method with the following signature:

```ruby
StringCalculator.add(string)
```

It receives a **string of numbers**, separated by delimiters, and returns the **sum** of those numbers.

---

## ✨ Features

- Empty string returns `0`
- A single number returns the number itself
- Two or more comma-separated numbers are summed
- Newline characters (`\n`) are allowed as delimiters
- Custom delimiters are supported in the format: `//[delimiter]\n[numbers]`
- Raises an exception if negative numbers are passed
- If multiple negative numbers are passed, the exception includes all of them

---

## 🧪 Examples

```ruby
StringCalculator.add("")           # => 0
StringCalculator.add("1")          # => 1
StringCalculator.add("1,2")        # => 3
StringCalculator.add("1\n2,3")     # => 6
StringCalculator.add("//;\n1;2")   # => 3
StringCalculator.add("1,-2")       # => RuntimeError: negative numbers not allowed: -2
StringCalculator.add("1,-2,-3")    # => RuntimeError: negative numbers not allowed: -2, -3
```

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/niri4/ruby_string_calculator.git
cd ruby_string_calculator
```

### 2. Install dependencies

```bash
bundle install
```

*(Only if you’re using Bundler; otherwise just make sure `rspec` is installed)*

### 3. Run the test suite

```bash
rspec
```

---

## 🧩 File Structure

```
string_calculator_kata/
│
├── string_calculator.rb         # Implementation
├── string_calculator_spec.rb    # RSpec test cases
└── README.md                    # You’re here!
```

---

## 🧪 Test-Driven Development Steps

Each functionality was developed incrementally using TDD:

1. Return 0 for an empty string
2. Return the number itself for one number
3. Handle two comma-separated numbers
4. Support multiple comma-separated numbers
5. Support newline characters as delimiters
6. Support custom single-character delimiters (`//;\n1;2`)
7. Raise exception on negative numbers
8. Show all negative numbers in the error message

---

## 📚 Resources

- Ruby documentation: [ruby-doc.org](https://ruby-doc.org/)
- RSpec documentation: [rspec.info](https://rspec.info/)

---

## 🧑‍💻 Author

Made with ❤️ using Ruby and TDD.  
[Nirankar Singh] – [nirankarsingh247@gmail.com] – [https://github.com/niri4]

---

## 📄 License

This project is licensed under the MIT License. See `LICENSE` for details.